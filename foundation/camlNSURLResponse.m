// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSURLResponse.h>
value caml_init_NSURLResponse(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSURLResponse");
   arg2 = caml_wrap_id([NSURLResponse class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithURL:l_MIMEType:expectedContentLength:textEncodingName:");
   arg2 = caml_wrap_pointer(@selector(initWithURL:l_MIMEType:expectedContentLength:textEncodingName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_URL:");
   arg2 = caml_wrap_pointer(@selector(l_URL ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_MIMEType:");
   arg2 = caml_wrap_pointer(@selector(l_MIMEType ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("expectedContentLength:");
   arg2 = caml_wrap_pointer(@selector(expectedContentLength ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("textEncodingName:");
   arg2 = caml_wrap_pointer(@selector(textEncodingName ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("suggestedFilename:");
   arg2 = caml_wrap_pointer(@selector(suggestedFilename ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSHTTPURLResponse");
   arg2 = caml_wrap_id([NSHTTPURLResponse class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("statusCode:");
   arg2 = caml_wrap_pointer(@selector(statusCode ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("allHeaderFields:");
   arg2 = caml_wrap_pointer(@selector(allHeaderFields ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("localizedStringForStatusCode:");
   arg2 = caml_wrap_pointer(@selector(localizedStringForStatusCode:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
