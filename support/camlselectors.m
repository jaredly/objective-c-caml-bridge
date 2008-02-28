#define CAML_NAME_SPACE
#include <caml/mlvalues.h>
#include <caml/alloc.h>
#include <caml/memory.h>
#include <caml/custom.h>
#include <caml/fail.h>
#include <caml/callback.h>

#include <objc/objc-runtime.h>

extern value caml_wrap_pointer (void *x);

value caml_find_selector (value s)
{
  CAMLparam1(s);
  SEL sel = sel_getUid(String_val(s));
  CAMLreturn(caml_wrap_pointer(sel));
}


// Local Variables:
// mode: objc
// End:
