#define CAML_NAME_SPACE
#include <caml/mlvalues.h>
#include <caml/alloc.h>
#include <caml/memory.h>
#include <caml/custom.h>
#include <caml/fail.h>
#include <caml/callback.h>

#include <objc/objc-runtime.h>

extern value caml_wrap_id (id x);

value caml_find_class (value s)
{
  CAMLparam1(s);
  id c = objc_getClass(String_val(s));
  if (c == NULL) caml_raise_not_found();
  CAMLreturn(caml_wrap_id(c));
}


// Local Variables:
// mode: objc
// End:
