#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSObjectScripting.h>
value caml_init_NSObjectScripting(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("scriptingProperties:");
   arg2 = caml_wrap_pointer(@selector(scriptingProperties ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setScriptingProperties:");
   arg2 = caml_wrap_pointer(@selector(setScriptingProperties:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
