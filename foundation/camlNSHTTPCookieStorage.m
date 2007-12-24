// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSHTTPCookieStorage.h>
value caml_init_NSHTTPCookieStorage(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSHTTPCookieStorage");
   arg2 = caml_wrap_id([NSHTTPCookieStorage class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedHTTPCookieStorage:");
   arg2 = caml_wrap_pointer(@selector(sharedHTTPCookieStorage ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cookies:");
   arg2 = caml_wrap_pointer(@selector(cookies ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCookie:");
   arg2 = caml_wrap_pointer(@selector(setCookie:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("deleteCookie:");
   arg2 = caml_wrap_pointer(@selector(deleteCookie:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cookiesForURL:");
   arg2 = caml_wrap_pointer(@selector(cookiesForURL:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCookies:forURL:mainDocumentURL:");
   arg2 = caml_wrap_pointer(@selector(setCookies:forURL:mainDocumentURL:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cookieAcceptPolicy:");
   arg2 = caml_wrap_pointer(@selector(cookieAcceptPolicy ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCookieAcceptPolicy:");
   arg2 = caml_wrap_pointer(@selector(setCookieAcceptPolicy:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
