#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSDistributedNotificationCenter.h>
value caml_init_NSDistributedNotificationCenter(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSDistributedNotificationCenter");
   arg2 = caml_wrap_id([NSDistributedNotificationCenter class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("notificationCenterForType:");
   arg2 = caml_wrap_pointer(@selector(notificationCenterForType:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("defaultCenter:");
   arg2 = caml_wrap_pointer(@selector(defaultCenter ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("addObserver:selector:name:l_object:suspensionBehavior:");
   arg2 = caml_wrap_pointer(@selector(addObserver:selector:name:l_object:suspensionBehavior:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("postNotificationName:l_object:userInfo:deliverImmediately:");
   arg2 = caml_wrap_pointer(@selector(postNotificationName:l_object:userInfo:deliverImmediately:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("postNotificationName:l_object:userInfo:options:");
   arg2 = caml_wrap_pointer(@selector(postNotificationName:l_object:userInfo:options:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setSuspended:");
   arg2 = caml_wrap_pointer(@selector(setSuspended:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("suspended:");
   arg2 = caml_wrap_pointer(@selector(suspended ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("addObserver:selector:name:l_object:");
   arg2 = caml_wrap_pointer(@selector(addObserver:selector:name:l_object:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("postNotificationName:l_object:");
   arg2 = caml_wrap_pointer(@selector(postNotificationName:l_object:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("postNotificationName:l_object:userInfo:");
   arg2 = caml_wrap_pointer(@selector(postNotificationName:l_object:userInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeObserver:name:l_object:");
   arg2 = caml_wrap_pointer(@selector(removeObserver:name:l_object:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
