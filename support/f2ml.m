/*
 * Need to think about
 *    - freeing of value whose proxyId is stored in object (register/deregister?)
 *    - exceptions?
 *    - new?
 *    - argumentsRetained:
 *
 * 
 */
#include <string.h>

#define CAML_NAME_SPACE
#include <caml/mlvalues.h>
#include <caml/alloc.h>
#include <caml/memory.h>
#include <caml/custom.h>
#include <caml/fail.h>
#include <caml/callback.h>

#import <Foundation/NSMethodSignature.h>
#import <Foundation/NSInvocation.h>
#import <Foundation/NSString.h>
#import <Foundation/NSDictionary.h>

#include "camlobjc.h"
#include "camlstubs.h"

@implementation OCamlProxy

- initWithId:(int)oid
{
  proxyId = oid;
}

- (void) forwardInvocation:(NSInvocation *)inv
{
  // we need local storage for the target, the argument array,
  // a temporary variable for argument conversions, and the result
  CAMLlocal5(o, args, res, taggedval, variant);
  void *buffer;

  // Build arguments array (all values injected to ffi type)
  // We work off the method signature for types.
  NSMethodSignature *sig = [inv methodSignature];
  args = caml_alloc([sig numberOfArguments] - 2, 0); // 0 size array is valid
  int i;
  for (i = 2; i <= [sig numberOfArguments]; i++) { // 0 = self, 1 = SEL
    const char *t = [sig getArgumentTypeAtIndex: i];
    // Doc: Type Encodings, in Objc Programming Language manual, Chapter on Runtime system
    if(1 == strlen(t)) {
      switch(*t) {
      case 'B': // bool
	CVARG(bool, tagBool, a?Val_true:Val_false);
	break;
      case 'c': // char
      case 'C': // unsigned char
	CVARG(char, tagChar, Int_val(a));
	break;
      case 'i': // int
      case 'I': // unsigned int
	CVARG(int, tagInt, Int_val(a));
	break;
      case 'q': // long long
      case 'Q': // unsigned long long
	CVARG(long long, tagInt64, caml_copy_int64(a));
	break;
      case 'f': // float
	CVARG(float, tagDouble, caml_copy_double(a));
	break;
      case 'g': // double
	CVARG(double, tagDouble, caml_copy_double(a));
	break;
      case '*': // char *
        CVARG(char *, tagString, (NULL==a) ? caml_copy_string("") : caml_copy_string(a));
	break;
      case '@': // id
      case '#': // Class 
	CVARG(id, tagPointer, caml_wrap_id(a));
	break;
      case ':': // SEL
	CVARG(SEL, tagSelector, caml_wrap_pointer(a));
	break;
	// TBD: NSRange, NSPoint, NSSize, NSRect
      default:
	// consider that we can't handle that invocation
	[self doesNotRecognizeSelector:[inv selector]];
	return;
      }
    } else { // Only supporting simple argument types
      [self doesNotRecognizeSelector:[inv selector]];
      return;
    }
  }
  // Figure out selector full name and its hash variant
  {
    const char *s = sel_getName([inv selector]);
    char *m = malloc(strlen(s)+strlen("internal_")+1);
    strcat(m, "internal_"); strcat(m, s);
    variant = caml_hash_variant(m);
    free(m);
  }

  // Make sure we know how to handle the result
  // before we invoke the method on the ocaml object
  const char *r = [sig methodReturnType];
  if(1 != strlen(r))
      [self doesNotRecognizeSelector:[inv selector]];


  // Get the target object from the global table
  o = caml_callback(*caml_named_value("objc.get_proxy_object"), Val_int(proxyId));
  // TBD: need to add the "internal_" method prefix due to object conversion reqs.
  // TBD: a future version will handle properly the 1,2,3,4,n cases
  // Invoke OCaml method (the stub version which decodes the array)
  res = caml_callback2(caml_get_public_method(o, variant), o, args);

  // The return value is NOT an ffi
  switch(*r) {
  case 'v': // void
    break;
  case 'B': // bool
	{ int b =  Bool_val(res); [inv setReturnValue:&b]; break;}
  case 'c': // char
	{ char b =  Int_val(res); [inv setReturnValue:&b]; break;}
  case 'C': // unsigned char
	{ unsigned char b =  Int_val(res); [inv setReturnValue:&b]; break;}
  case 'i': // int
	{ int b =  Int_val(res); [inv setReturnValue:&b]; break;}
  case 'I': // unsigned int
	{ unsigned int b =  Int_val(res); [inv setReturnValue:&b]; break;}
  case 'q': // long long
	{ long long b =  Int64_val(res); [inv setReturnValue:&b]; break;}
  case 'Q': // unsigned long long
	{ unsigned long long b =  Int64_val(res); [inv setReturnValue:&b]; break;}
  case 'f': // float
	{ float b =  Double_val(res); [inv setReturnValue:&b]; break;}
  case 'g': // double
	{ double b =  Double_val(res); [inv setReturnValue:&b]; break;}
  case '*': // char *
	{ char * b =  String_val(res); [inv setReturnValue:&b]; break;}
  case '@': // id
	{ id b =  Camlid_val(res); [inv setReturnValue:&b]; break;}
  case '#': // Class 
	{ Class b =  Camlid_val(res); [inv setReturnValue:&b]; break;}
  case ':': // SEL
	{ SEL b =  Caml_pointer_val(res); [inv setReturnValue:&b]; break;}
  default: // ouch
    [self doesNotRecognizeSelector:[inv selector]];
  }

}



// From the documentation
// Important: To respond to methods that your object does not itself recognize, 
// you must override methodSignatureForSelector: in addition to forwardInvocation:.
// Your overriding method must provide an appropriate method signature for the given 
// selector, either by preformulating one or by asking another object for one.

// We use signatureWithObjCTypes to store the signatures of
// the methods in an associative table keyed by the message name
// (We can't use a NSDictionary with SEL as key (the key must be
// an object w/ NSCopying protocol.), so we loose a bit of
// expressivity by going back to method name)

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
  const char *n = sel_getName(aSelector);
  NSString *k = [[NSString alloc] initWithUTF8String: n];
  NSDictionary *d = [self sigs];
  return [d objectForKey: k];
}

// Obviously this method must be overriden.
-(NSDictionary *)sigs
{
  return nil;
}
@end
// Local Variables:
// mode: objc
// End:
