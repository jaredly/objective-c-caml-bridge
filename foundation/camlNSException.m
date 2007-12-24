// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSException.h>
value caml_init_NSException(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSException");
   arg2 = caml_wrap_id([NSException class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("raise:format:");
   arg2 = caml_wrap_pointer(@selector(raise:format:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("raise:format:arguments:");
   arg2 = caml_wrap_pointer(@selector(raise:format:arguments:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("exceptionWithName:reason:userInfo:");
   arg2 = caml_wrap_pointer(@selector(exceptionWithName:reason:userInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithName:reason:userInfo:");
   arg2 = caml_wrap_pointer(@selector(initWithName:reason:userInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("name:");
   arg2 = caml_wrap_pointer(@selector(name ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("reason:");
   arg2 = caml_wrap_pointer(@selector(reason ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("userInfo:");
   arg2 = caml_wrap_pointer(@selector(userInfo ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("raise:");
   arg2 = caml_wrap_pointer(@selector(raise ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSAssertionHandler");
   arg2 = caml_wrap_id([NSAssertionHandler class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("currentHandler:");
   arg2 = caml_wrap_pointer(@selector(currentHandler ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("handleFailureInMethod:l_object:file:lineNumber:description:");
   arg2 = caml_wrap_pointer(@selector(handleFailureInMethod:l_object:file:lineNumber:description:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("handleFailureInFunction:file:lineNumber:description:");
   arg2 = caml_wrap_pointer(@selector(handleFailureInFunction:file:lineNumber:description:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
