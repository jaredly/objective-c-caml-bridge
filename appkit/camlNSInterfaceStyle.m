#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSInterfaceStyle.h>
value caml_init_NSInterfaceStyle(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSResponder");
   arg2 = caml_wrap_id([NSResponder class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("interfaceStyle:");
   arg2 = caml_wrap_pointer(@selector(interfaceStyle ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setInterfaceStyle:");
   arg2 = caml_wrap_pointer(@selector(setInterfaceStyle:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
