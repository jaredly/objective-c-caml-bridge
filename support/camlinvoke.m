#define CAML_NAME_SPACE
#include <caml/mlvalues.h>
#include <caml/alloc.h>
#include <caml/memory.h>
#include <caml/custom.h>
#include <caml/fail.h>
#include <caml/callback.h>

#import <Foundation/NSMethodSignature.h>
#import <Foundation/NSInvocation.h>
#import <Foundation/NSError.h>
#import <Foundation/NSRange.h>
#import <Foundation/Foundation.h>

/*
http://developer.apple.com/documentation/Cocoa/Reference/Foundation/Classes/NSInvocation_Class/Reference/Reference.html
*/
// Tag_val(obj)
enum {
  // No tag for Unit, since there is only a construct without an argument
  tagBool = 0,
  tagChar = 1,
  tagInt = 2,
  tagInt64 = 3,
  tagDouble = 4,
  tagString = 5,
  tagPointer = 6,
  tagSelector = 7,
  tagNSErrorArg = 8,
  tagNSRange = 9,
};

/*
 * As recommended, (void *) or any malloc-ed entity should be wrapped in 
 * a finalized object. In addition, the refcounting convention in MacOSX
 * requires us to "retain" all returned objects if we want to keep them 
 * around.
 */

// Access the id from the Val
#define Camlid_val(x)  (*((id *) Data_custom_val(x)))

// Finalizer
static void finalize_camlid(value v)
{
  id i = Camlid_val(v);
  [i release];
}

static struct custom_operations caml_id_ops = {
  "org.rouaix.devel.objc_id",
  &finalize_camlid,
  custom_compare_default,
  custom_hash_default,
  custom_serialize_default,   // this should probably be NSCoder of some sort
  custom_deserialize_default
};

// Wrapping an ObjC object
value caml_wrap_id(id x)
{
  CAMLparam0();  // makes caml__frame warning go away
  CAMLlocal1(res);
  res=caml_alloc_custom(&caml_id_ops, sizeof(id), 0, 1);
  Camlid_val(res) = x;
  CAMLreturn(res);
}

/*
 * Making random pointers opaque
 */
static struct custom_operations caml_pointer_ops = {
  "org.rouaix.devel.objc_void*",
  custom_finalize_default,
  custom_compare_default,
  custom_hash_default,
  custom_serialize_default,   // this should probably be NSCoder of some sort
  custom_deserialize_default
};

#define Caml_pointer_val(x)  (*((void **) Data_custom_val(x)))

value caml_wrap_pointer (void *x)
{
  CAMLparam0();
  CAMLlocal1(res);
  res=caml_alloc_custom(&caml_pointer_ops, sizeof (void *), 0, 1);
  Caml_pointer_val(res) = x;
  CAMLreturn(res);
}

// Sending "new" to a class object
value caml_message_new(value aClass)
{
  CAMLparam1(aClass);
  Class c = (Class)Camlid_val(aClass);
  id o = [c new];
  CAMLreturn(caml_wrap_id(o));
}

value caml_message_alloc(value aClass)
{
  CAMLparam1(aClass);
  Class c = (Class)Camlid_val(aClass);
  id o = [c alloc];
  CAMLreturn(caml_wrap_id(o));
}

static int debug = 0;
value caml_debug_invoke(value toggle)
{
  CAMLparam0();
  debug = Int_val(toggle);
  CAMLreturn(Val_int(0));
}

value caml_invoke(value rtag, value o, value sel, value args) 
{
  CAMLparam4(o, sel, args, rtag);
  CAMLlocal2(retval, taggedval);

  /* message target: it should always be a custom val that we created */
  id target = Camlid_val(o);
  Class c = [target class];
  SEL selector = Caml_pointer_val(sel);
  NSMethodSignature *sig = [target methodSignatureForSelector: (SEL)selector];
  if (sig == nil) {
    NSLog(@"invalid selector class: %@ selector: %s", [c description], sel_getName(selector));
    caml_invalid_argument("method not implemented");
  }
  NSInvocation *inv = [NSInvocation invocationWithMethodSignature:sig];
  [inv setTarget:target];
  [inv setSelector: (SEL)selector];

  // Support for (NSError **) args
  int nserror_arg = 0;
  NSError *error = nil;

  // Let's loop over the arguments
  // setArgument makes copies, so it's ok to use stack to hold temporary values
  // Also, we aren't allocating within this loop
  int i, k = [sig numberOfArguments];

  if (debug) 
    NSLog(@"class: %@ selector: %s rtag: %d #args: %d", [c description], sel_getName(selector), Int_val(rtag), k-2);

  for (i=2;i<k;i++) {
    if (Is_block(args)) { // make sure it's a cons
      value a = Field(args, 0); // the car
      args = Field(args, 1);    // the cdr
      if (!Is_block(a)) {
	NSLog(@"class: %@ selector: %s rtag: %d #args: %d", [c description], sel_getName(selector), Int_val(rtag), k-2);
	caml_invalid_argument("argument of type unit not supported");
      } else {
	switch (Tag_val(a)) { // this reflects Objc.ffi
	case tagBool:
	  {int b = Bool_val(Field(a, 0)); [inv setArgument:&b atIndex: i];}
	case tagChar:
	  {char c = Int_val(Field(a, 0)); [inv setArgument:&c atIndex: i]; }
	  break;
	case tagInt:
	  { int j = Int_val(Field(a, 0)); [inv setArgument:&j atIndex: i]; }
	  break;
	case tagInt64:
	  { long int j = Int64_val(Field(a, 0)); [inv setArgument:&j atIndex: i]; }
	  break;
	case tagDouble:
	  { double d = Double_val(Field(a, 0)); [inv setArgument:&d atIndex: i]; }
	  break;
	case tagString:
	  { void *p = String_val(Field(a,0)); [inv setArgument:&p atIndex: i]; }
	  break;
	case tagPointer:
	  // see remark above about native vs. non-native objects
	  { id o = Camlid_val(Field(a, 0)); [inv setArgument:&o atIndex: i]; }
	  break;
	case tagSelector:
	  { SEL s = Caml_pointer_val(Field(a, 0)); [inv setArgument:&s atIndex:i];}
	  break;			   
	case tagNSErrorArg:
	  { nserror_arg = Int_val(Field(a, 0));
	    NSError **e = &error;
	    [inv setArgument:(nserror_arg ? &e : nil) atIndex:i];
	  }
	  break;
	case tagNSRange:
	  { NSRange r; r.location = Int_val(Field(a, 0)); r.length = Int_val(Field(a, 1));
	    [inv setArgument:&r atIndex:i];}
	  break;
	default: 
	  NSLog(@"class: %@ selector: %s rtag: %d #args: %d", [c description], sel_getName(selector), Int_val(rtag), k-2);
	  caml_invalid_argument("unsupported argument type");
	  break;
	}
      }
    } else {
      NSLog(@"class: %@ selector: %s rtag: %d #args: %d", [c description], sel_getName(selector), Int_val(rtag), k-2);
      caml_invalid_argument("message is missing arguments");
    }
  }
  // Make sure we got them all
  if (Is_block(args)) {
    caml_invalid_argument("message has too many arguments");
  }
  // Ready now
  [inv invoke];

  // I don't know for sure if there's a standard way to check the result of invocation
  if (nserror_arg) {
    if (error != nil) {
      retval = caml_wrap_id(error);
      caml_raise_with_arg(*caml_named_value("NSError"), retval);
    }
  }

  // Getting the result back
  if (Int_val(rtag) >= 0) { // negative values have special meanings
    unsigned int len = [sig methodReturnLength];
    void *buffer = malloc(len);
    [inv getReturnValue: buffer];
    // Injecting back to caml
    switch(Int_val(rtag)) {
    case tagBool:
      retval = (*(BOOL *)buffer) ? Val_true : Val_false;
      taggedval = caml_alloc(1, Int_val(rtag));
      Store_field(taggedval, 0, retval);
      break;
    case tagChar:
      retval = Val_int(*(char *)buffer);
      taggedval = caml_alloc(1, Int_val(rtag));
      Store_field(taggedval, 0, retval);
      break;
    case tagInt:
      retval = Val_int(*(int *)buffer);
      taggedval = caml_alloc(1, Int_val(rtag));
      Store_field(taggedval, 0, retval);
      break;
    case tagInt64:
      retval = caml_copy_int64(*(long int *)buffer);
      taggedval = caml_alloc(1, Int_val(rtag));
      Store_field(taggedval, 0, retval);
      break;
    case tagDouble:
      retval = caml_copy_double(*(double *)buffer);
      taggedval = caml_alloc(1, Int_val(rtag));
      Store_field(taggedval, 0, retval);
      break;
    case tagString:
      if (NULL == *(char **)buffer) {
	caml_failwith("null");
      } else {
	retval = caml_copy_string(*(char **)buffer);
	taggedval = caml_alloc(1, Int_val(rtag));
	Store_field(taggedval, 0, retval);
      }
      break;
    case tagPointer:
      retval = caml_wrap_id(*(id *)buffer);
      taggedval = caml_alloc(1, Int_val(rtag));
      Store_field(taggedval, 0, retval);
      break;
    case tagSelector:
      retval = caml_wrap_pointer(*(void **)buffer);
      taggedval = caml_alloc(1, Int_val(rtag));
      Store_field(taggedval, 0, retval);
      break;
    case tagNSRange:
      { NSRange r = *(NSRange *)buffer;
	taggedval = caml_alloc(2, Int_val(rtag));
	Store_field(taggedval, 0, Val_int(r.location));
	Store_field(taggedval, 1, Val_int(r.length));
      }
      break;
    default:
      caml_invalid_argument("unknown return type"); // this leaks buffer
      break;
    }
    if (buffer) free(buffer);
  } else if (Int_val(rtag) == -1) { // unit - this only supports one constructor without arguments
    taggedval = Val_int(0);
  } else {
    caml_invalid_argument("unknown return type");
  }
  CAMLreturn(taggedval);
}


// Local Variables:
// mode: objc
// End:
