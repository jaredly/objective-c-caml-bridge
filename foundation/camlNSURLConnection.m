// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSURLConnection.h>
value caml_init_NSURLConnection(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSURLConnection");
   arg2 = caml_wrap_id([NSURLConnection class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sendSynchronousRequest:returningResponse:error:");
   arg2 = caml_wrap_pointer(@selector(sendSynchronousRequest:returningResponse:error:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("canHandleRequest:");
   arg2 = caml_wrap_pointer(@selector(canHandleRequest:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("connectionWithRequest:delegate:");
   arg2 = caml_wrap_pointer(@selector(connectionWithRequest:delegate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithRequest:delegate:");
   arg2 = caml_wrap_pointer(@selector(initWithRequest:delegate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cancel:");
   arg2 = caml_wrap_pointer(@selector(cancel ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("connection:willSendRequest:redirectResponse:");
   arg2 = caml_wrap_pointer(@selector(connection:willSendRequest:redirectResponse:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("connection:didReceiveAuthenticationChallenge:");
   arg2 = caml_wrap_pointer(@selector(connection:didReceiveAuthenticationChallenge:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("connection:didCancelAuthenticationChallenge:");
   arg2 = caml_wrap_pointer(@selector(connection:didCancelAuthenticationChallenge:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("connection:didReceiveResponse:");
   arg2 = caml_wrap_pointer(@selector(connection:didReceiveResponse:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("connection:didReceiveData:");
   arg2 = caml_wrap_pointer(@selector(connection:didReceiveData:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("connectionDidFinishLoading:");
   arg2 = caml_wrap_pointer(@selector(connectionDidFinishLoading:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("connection:didFailWithError:");
   arg2 = caml_wrap_pointer(@selector(connection:didFailWithError:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("connection:willCacheResponse:");
   arg2 = caml_wrap_pointer(@selector(connection:willCacheResponse:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
