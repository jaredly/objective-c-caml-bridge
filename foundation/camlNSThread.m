#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSThread.h>
value caml_init_NSThread(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSThread");
   arg2 = caml_wrap_id([NSThread class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("currentThread:");
   arg2 = caml_wrap_pointer(@selector(currentThread ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("detachNewThreadSelector:toTarget:withObject:");
   arg2 = caml_wrap_pointer(@selector(detachNewThreadSelector:toTarget:withObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isMultiThreaded:");
   arg2 = caml_wrap_pointer(@selector(isMultiThreaded ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("threadDictionary:");
   arg2 = caml_wrap_pointer(@selector(threadDictionary ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("sleepUntilDate:");
   arg2 = caml_wrap_pointer(@selector(sleepUntilDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("exit:");
   arg2 = caml_wrap_pointer(@selector(exit ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("threadPriority:");
   arg2 = caml_wrap_pointer(@selector(threadPriority ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setThreadPriority:");
   arg2 = caml_wrap_pointer(@selector(setThreadPriority:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("performSelectorOnMainThread:withObject:waitUntilDone:modes:");
   arg2 = caml_wrap_pointer(@selector(performSelectorOnMainThread:withObject:waitUntilDone:modes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("performSelectorOnMainThread:withObject:waitUntilDone:");
   arg2 = caml_wrap_pointer(@selector(performSelectorOnMainThread:withObject:waitUntilDone:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
