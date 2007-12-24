// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSRunLoop.h>
value caml_init_NSRunLoop(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSRunLoop");
   arg2 = caml_wrap_id([NSRunLoop class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("performSelector:target:argument:order:modes:");
   arg2 = caml_wrap_pointer(@selector(performSelector:target:argument:order:modes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cancelPerformSelector:target:argument:");
   arg2 = caml_wrap_pointer(@selector(cancelPerformSelector:target:argument:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cancelPerformSelectorsWithTarget:");
   arg2 = caml_wrap_pointer(@selector(cancelPerformSelectorsWithTarget:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("run:");
   arg2 = caml_wrap_pointer(@selector(run ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("runUntilDate:");
   arg2 = caml_wrap_pointer(@selector(runUntilDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("runMode:beforeDate:");
   arg2 = caml_wrap_pointer(@selector(runMode:beforeDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("configureAsServer:");
   arg2 = caml_wrap_pointer(@selector(configureAsServer ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("currentRunLoop:");
   arg2 = caml_wrap_pointer(@selector(currentRunLoop ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("currentMode:");
   arg2 = caml_wrap_pointer(@selector(currentMode ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("getCFRunLoop:");
   arg2 = caml_wrap_pointer(@selector(getCFRunLoop ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("addTimer:forMode:");
   arg2 = caml_wrap_pointer(@selector(addTimer:forMode:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("addPort:forMode:");
   arg2 = caml_wrap_pointer(@selector(addPort:forMode:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removePort:forMode:");
   arg2 = caml_wrap_pointer(@selector(removePort:forMode:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("limitDateForMode:");
   arg2 = caml_wrap_pointer(@selector(limitDateForMode:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("acceptInputForMode:beforeDate:");
   arg2 = caml_wrap_pointer(@selector(acceptInputForMode:beforeDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("performSelector:withObject:afterDelay:inModes:");
   arg2 = caml_wrap_pointer(@selector(performSelector:withObject:afterDelay:inModes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("performSelector:withObject:afterDelay:");
   arg2 = caml_wrap_pointer(@selector(performSelector:withObject:afterDelay:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cancelPreviousPerformRequestsWithTarget:selector:l_object:");
   arg2 = caml_wrap_pointer(@selector(cancelPreviousPerformRequestsWithTarget:selector:l_object:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cancelPreviousPerformRequestsWithTarget:");
   arg2 = caml_wrap_pointer(@selector(cancelPreviousPerformRequestsWithTarget:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
