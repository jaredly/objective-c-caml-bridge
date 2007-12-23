#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSNotificationQueue.h>
value caml_init_NSNotificationQueue(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSNotificationQueue");
   arg2 = caml_wrap_id([NSNotificationQueue class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("defaultQueue:");
   arg2 = caml_wrap_pointer(@selector(defaultQueue ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithNotificationCenter:");
   arg2 = caml_wrap_pointer(@selector(initWithNotificationCenter:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("enqueueNotification:postingStyle:");
   arg2 = caml_wrap_pointer(@selector(enqueueNotification:postingStyle:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("enqueueNotification:postingStyle:coalesceMask:forModes:");
   arg2 = caml_wrap_pointer(@selector(enqueueNotification:postingStyle:coalesceMask:forModes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("dequeueNotificationsMatching:coalesceMask:");
   arg2 = caml_wrap_pointer(@selector(dequeueNotificationsMatching:coalesceMask:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
