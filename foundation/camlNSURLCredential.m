// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSURLCredential.h>
value caml_init_NSURLCredential(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSURLCredential");
   arg2 = caml_wrap_id([NSURLCredential class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithUser:password:persistence:");
   arg2 = caml_wrap_pointer(@selector(initWithUser:password:persistence:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("credentialWithUser:password:persistence:");
   arg2 = caml_wrap_pointer(@selector(credentialWithUser:password:persistence:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("user:");
   arg2 = caml_wrap_pointer(@selector(user ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("password:");
   arg2 = caml_wrap_pointer(@selector(password ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("hasPassword:");
   arg2 = caml_wrap_pointer(@selector(hasPassword ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("persistence:");
   arg2 = caml_wrap_pointer(@selector(persistence ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
