#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSTimer.h>
value caml_init_NSTimer(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSTimer");
   arg2 = caml_wrap_id([NSTimer class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("timerWithTimeInterval:invocation:repeats:");
   arg2 = caml_wrap_pointer(@selector(timerWithTimeInterval:invocation:repeats:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("scheduledTimerWithTimeInterval:invocation:repeats:");
   arg2 = caml_wrap_pointer(@selector(scheduledTimerWithTimeInterval:invocation:repeats:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("timerWithTimeInterval:target:selector:userInfo:repeats:");
   arg2 = caml_wrap_pointer(@selector(timerWithTimeInterval:target:selector:userInfo:repeats:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:");
   arg2 = caml_wrap_pointer(@selector(scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithFireDate:interval:target:selector:userInfo:repeats:");
   arg2 = caml_wrap_pointer(@selector(initWithFireDate:interval:target:selector:userInfo:repeats:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fire:");
   arg2 = caml_wrap_pointer(@selector(fire ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fireDate:");
   arg2 = caml_wrap_pointer(@selector(fireDate ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setFireDate:");
   arg2 = caml_wrap_pointer(@selector(setFireDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("timeInterval:");
   arg2 = caml_wrap_pointer(@selector(timeInterval ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("invalidate:");
   arg2 = caml_wrap_pointer(@selector(invalidate ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isValid:");
   arg2 = caml_wrap_pointer(@selector(isValid ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("userInfo:");
   arg2 = caml_wrap_pointer(@selector(userInfo ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
