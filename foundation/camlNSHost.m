#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSHost.h>
value caml_init_NSHost(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSHost");
   arg2 = caml_wrap_id([NSHost class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("currentHost:");
   arg2 = caml_wrap_pointer(@selector(currentHost ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("hostWithName:");
   arg2 = caml_wrap_pointer(@selector(hostWithName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("hostWithAddress:");
   arg2 = caml_wrap_pointer(@selector(hostWithAddress:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setHostCacheEnabled:");
   arg2 = caml_wrap_pointer(@selector(setHostCacheEnabled:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isHostCacheEnabled:");
   arg2 = caml_wrap_pointer(@selector(isHostCacheEnabled ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("flushHostCache:");
   arg2 = caml_wrap_pointer(@selector(flushHostCache ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isEqualToHost:");
   arg2 = caml_wrap_pointer(@selector(isEqualToHost:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("name:");
   arg2 = caml_wrap_pointer(@selector(name ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("names:");
   arg2 = caml_wrap_pointer(@selector(names ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("address:");
   arg2 = caml_wrap_pointer(@selector(address ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("addresses:");
   arg2 = caml_wrap_pointer(@selector(addresses ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
