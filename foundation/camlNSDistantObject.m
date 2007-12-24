// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSDistantObject.h>
value caml_init_NSDistantObject(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSDistantObject");
   arg2 = caml_wrap_id([NSDistantObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("proxyWithTarget:connection:");
   arg2 = caml_wrap_pointer(@selector(proxyWithTarget:connection:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithTarget:connection:");
   arg2 = caml_wrap_pointer(@selector(initWithTarget:connection:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("proxyWithLocal:connection:");
   arg2 = caml_wrap_pointer(@selector(proxyWithLocal:connection:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithLocal:connection:");
   arg2 = caml_wrap_pointer(@selector(initWithLocal:connection:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setProtocolForProxy:");
   arg2 = caml_wrap_pointer(@selector(setProtocolForProxy:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("connectionForProxy:");
   arg2 = caml_wrap_pointer(@selector(connectionForProxy ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
