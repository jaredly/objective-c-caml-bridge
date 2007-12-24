// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSProtocolChecker.h>
value caml_init_NSProtocolChecker(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSProtocolChecker");
   arg2 = caml_wrap_id([NSProtocolChecker class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("protocolCheckerWithTarget:protocol:");
   arg2 = caml_wrap_pointer(@selector(protocolCheckerWithTarget:protocol:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithTarget:protocol:");
   arg2 = caml_wrap_pointer(@selector(initWithTarget:protocol:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("protocol:");
   arg2 = caml_wrap_pointer(@selector(protocol ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("target:");
   arg2 = caml_wrap_pointer(@selector(target ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
