#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSEnumerator.h>
value caml_init_NSEnumerator(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSEnumerator");
   arg2 = caml_wrap_id([NSEnumerator class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("allObjects:");
   arg2 = caml_wrap_pointer(@selector(allObjects ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("nextObject:");
   arg2 = caml_wrap_pointer(@selector(nextObject ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
