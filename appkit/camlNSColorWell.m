#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSColorWell.h>
value caml_init_NSColorWell(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSColorWell");
   arg2 = caml_wrap_id([NSColorWell class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("deactivate:");
   arg2 = caml_wrap_pointer(@selector(deactivate ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("activate:");
   arg2 = caml_wrap_pointer(@selector(activate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isActive:");
   arg2 = caml_wrap_pointer(@selector(isActive ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawWellInside:");
   arg2 = caml_wrap_pointer(@selector(drawWellInside:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isBordered:");
   arg2 = caml_wrap_pointer(@selector(isBordered ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setBordered:");
   arg2 = caml_wrap_pointer(@selector(setBordered:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("takeColorFrom:");
   arg2 = caml_wrap_pointer(@selector(takeColorFrom:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setColor:");
   arg2 = caml_wrap_pointer(@selector(setColor:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("color:");
   arg2 = caml_wrap_pointer(@selector(color ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
