#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSURLProtectionSpace.h>
value caml_init_NSURLProtectionSpace(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSURLProtectionSpace");
   arg2 = caml_wrap_id([NSURLProtectionSpace class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithHost:port:protocol:realm:authenticationMethod:");
   arg2 = caml_wrap_pointer(@selector(initWithHost:port:protocol:realm:authenticationMethod:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithProxyHost:port:l_type:realm:authenticationMethod:");
   arg2 = caml_wrap_pointer(@selector(initWithProxyHost:port:l_type:realm:authenticationMethod:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("realm:");
   arg2 = caml_wrap_pointer(@selector(realm ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("receivesCredentialSecurely:");
   arg2 = caml_wrap_pointer(@selector(receivesCredentialSecurely ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isProxy:");
   arg2 = caml_wrap_pointer(@selector(isProxy ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("host:");
   arg2 = caml_wrap_pointer(@selector(host ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("port:");
   arg2 = caml_wrap_pointer(@selector(port ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("proxyType:");
   arg2 = caml_wrap_pointer(@selector(proxyType ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("protocol:");
   arg2 = caml_wrap_pointer(@selector(protocol ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("authenticationMethod:");
   arg2 = caml_wrap_pointer(@selector(authenticationMethod ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
