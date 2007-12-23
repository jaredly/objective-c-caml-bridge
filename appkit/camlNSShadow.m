#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSShadow.h>
value caml_init_NSShadow(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSShadow");
   arg2 = caml_wrap_id([NSShadow class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("init:");
   arg2 = caml_wrap_pointer(@selector(init ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("shadowOffset:");
   arg2 = caml_wrap_pointer(@selector(shadowOffset ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setShadowOffset:");
   arg2 = caml_wrap_pointer(@selector(setShadowOffset:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("shadowBlurRadius:");
   arg2 = caml_wrap_pointer(@selector(shadowBlurRadius ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setShadowBlurRadius:");
   arg2 = caml_wrap_pointer(@selector(setShadowBlurRadius:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("shadowColor:");
   arg2 = caml_wrap_pointer(@selector(shadowColor ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setShadowColor:");
   arg2 = caml_wrap_pointer(@selector(setShadowColor:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("set:");
   arg2 = caml_wrap_pointer(@selector(set ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
