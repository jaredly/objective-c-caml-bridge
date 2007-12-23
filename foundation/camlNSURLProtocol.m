#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSURLProtocol.h>
value caml_init_NSURLProtocol(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSURLProtocol");
   arg2 = caml_wrap_id([NSURLProtocol class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithRequest:cachedResponse:client:");
   arg2 = caml_wrap_pointer(@selector(initWithRequest:cachedResponse:client:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("client:");
   arg2 = caml_wrap_pointer(@selector(client ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("request:");
   arg2 = caml_wrap_pointer(@selector(request ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cachedResponse:");
   arg2 = caml_wrap_pointer(@selector(cachedResponse ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("canInitWithRequest:");
   arg2 = caml_wrap_pointer(@selector(canInitWithRequest:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("canonicalRequestForRequest:");
   arg2 = caml_wrap_pointer(@selector(canonicalRequestForRequest:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("requestIsCacheEquivalent:toRequest:");
   arg2 = caml_wrap_pointer(@selector(requestIsCacheEquivalent:toRequest:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("startLoading:");
   arg2 = caml_wrap_pointer(@selector(startLoading ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stopLoading:");
   arg2 = caml_wrap_pointer(@selector(stopLoading ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("propertyForKey:inRequest:");
   arg2 = caml_wrap_pointer(@selector(propertyForKey:inRequest:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setProperty:forKey:inRequest:");
   arg2 = caml_wrap_pointer(@selector(setProperty:forKey:inRequest:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("registerClass:");
   arg2 = caml_wrap_pointer(@selector(registerClass:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("unregisterClass:");
   arg2 = caml_wrap_pointer(@selector(unregisterClass:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
