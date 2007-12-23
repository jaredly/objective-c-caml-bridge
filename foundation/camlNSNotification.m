#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSNotification.h>
value caml_init_NSNotification(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSNotification");
   arg2 = caml_wrap_id([NSNotification class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("notificationWithName:l_object:");
   arg2 = caml_wrap_pointer(@selector(notificationWithName:l_object:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("notificationWithName:l_object:userInfo:");
   arg2 = caml_wrap_pointer(@selector(notificationWithName:l_object:userInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("name:");
   arg2 = caml_wrap_pointer(@selector(name ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_object:");
   arg2 = caml_wrap_pointer(@selector(l_object ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("userInfo:");
   arg2 = caml_wrap_pointer(@selector(userInfo ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSNotificationCenter");
   arg2 = caml_wrap_id([NSNotificationCenter class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("defaultCenter:");
   arg2 = caml_wrap_pointer(@selector(defaultCenter ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("addObserver:selector:name:l_object:");
   arg2 = caml_wrap_pointer(@selector(addObserver:selector:name:l_object:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("postNotification:");
   arg2 = caml_wrap_pointer(@selector(postNotification:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("postNotificationName:l_object:");
   arg2 = caml_wrap_pointer(@selector(postNotificationName:l_object:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("postNotificationName:l_object:userInfo:");
   arg2 = caml_wrap_pointer(@selector(postNotificationName:l_object:userInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeObserver:");
   arg2 = caml_wrap_pointer(@selector(removeObserver:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeObserver:name:l_object:");
   arg2 = caml_wrap_pointer(@selector(removeObserver:name:l_object:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
