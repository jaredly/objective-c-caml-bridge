#define CAML_NAME_SPACE
#include <caml/mlvalues.h>
#include <caml/alloc.h>
#include <caml/memory.h>
#include <caml/custom.h>
#include <caml/fail.h>
#include <caml/callback.h>

#import <Foundation/NSKeyValueCoding.h>
#import <Foundation/NSString.h>

#include "camlobjc.h"

/* Key value coding: obtain attribute values from instances using a generic
 * interface.
 */

// Get a value
value camlkvc_get(value o, value key)
{
  CAMLparam2(o, key);
  id target = Camlid_val(o);
  NSString *nskey = [NSString stringWithCString:(String_val(key))];
  id res = [target valueForKey: nskey]; // this is one of: NSValue, NSFoo
  CAMLreturn(caml_wrap_id(res));
}

value camlkvc_set(value o, value key, value arg)
{
  CAMLparam3(o, key, arg);
  id target = Camlid_val(o);
  id v = Camlid_val(arg);
  NSString *nskey = [NSString stringWithCString:(String_val(key))];
  [target setValue:v forKey: nskey];
  CAMLreturn(Val_int(0));
}


// Local Variables:
// mode: objc
// End:
