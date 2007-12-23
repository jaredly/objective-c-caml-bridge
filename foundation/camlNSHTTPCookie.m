#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSHTTPCookie.h>
value caml_init_NSHTTPCookie(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSHTTPCookie");
   arg2 = caml_wrap_id([NSHTTPCookie class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithProperties:");
   arg2 = caml_wrap_pointer(@selector(initWithProperties:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cookieWithProperties:");
   arg2 = caml_wrap_pointer(@selector(cookieWithProperties:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("requestHeaderFieldsWithCookies:");
   arg2 = caml_wrap_pointer(@selector(requestHeaderFieldsWithCookies:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cookiesWithResponseHeaderFields:forURL:");
   arg2 = caml_wrap_pointer(@selector(cookiesWithResponseHeaderFields:forURL:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("properties:");
   arg2 = caml_wrap_pointer(@selector(properties ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("version:");
   arg2 = caml_wrap_pointer(@selector(version ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("name:");
   arg2 = caml_wrap_pointer(@selector(name ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("value:");
   arg2 = caml_wrap_pointer(@selector(value ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("expiresDate:");
   arg2 = caml_wrap_pointer(@selector(expiresDate ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isSessionOnly:");
   arg2 = caml_wrap_pointer(@selector(isSessionOnly ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("domain:");
   arg2 = caml_wrap_pointer(@selector(domain ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("path:");
   arg2 = caml_wrap_pointer(@selector(path ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isSecure:");
   arg2 = caml_wrap_pointer(@selector(isSecure ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("comment:");
   arg2 = caml_wrap_pointer(@selector(comment ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("commentURL:");
   arg2 = caml_wrap_pointer(@selector(commentURL ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("portList:");
   arg2 = caml_wrap_pointer(@selector(portList ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
