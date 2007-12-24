// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSSecureTextField.h>
value caml_init_NSSecureTextField(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSSecureTextField");
   arg2 = caml_wrap_id([NSSecureTextField class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("NSSecureTextFieldCell");
   arg2 = caml_wrap_id([NSSecureTextFieldCell class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setEchosBullets:");
   arg2 = caml_wrap_pointer(@selector(setEchosBullets:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("echosBullets:");
   arg2 = caml_wrap_pointer(@selector(echosBullets ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
