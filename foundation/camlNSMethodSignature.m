// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSMethodSignature.h>
value caml_init_NSMethodSignature(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSMethodSignature");
   arg2 = caml_wrap_id([NSMethodSignature class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("numberOfArguments:");
   arg2 = caml_wrap_pointer(@selector(numberOfArguments ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("getArgumentTypeAtIndex:");
   arg2 = caml_wrap_pointer(@selector(getArgumentTypeAtIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("frameLength:");
   arg2 = caml_wrap_pointer(@selector(frameLength ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isOneway:");
   arg2 = caml_wrap_pointer(@selector(isOneway ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("methodReturnType:");
   arg2 = caml_wrap_pointer(@selector(methodReturnType ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("methodReturnLength:");
   arg2 = caml_wrap_pointer(@selector(methodReturnLength ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
