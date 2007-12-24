// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSScriptCoercionHandler.h>
value caml_init_NSScriptCoercionHandler(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSScriptCoercionHandler");
   arg2 = caml_wrap_id([NSScriptCoercionHandler class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedCoercionHandler:");
   arg2 = caml_wrap_pointer(@selector(sharedCoercionHandler ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("coerceValue:toClass:");
   arg2 = caml_wrap_pointer(@selector(coerceValue:toClass:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("registerCoercer:selector:toConvertFromClass:toClass:");
   arg2 = caml_wrap_pointer(@selector(registerCoercer:selector:toConvertFromClass:toClass:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
