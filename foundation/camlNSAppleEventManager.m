#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSAppleEventManager.h>
value caml_init_NSAppleEventManager(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSAppleEventManager");
   arg2 = caml_wrap_id([NSAppleEventManager class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedAppleEventManager:");
   arg2 = caml_wrap_pointer(@selector(sharedAppleEventManager ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setEventHandler:andSelector:forEventClass:andEventID:");
   arg2 = caml_wrap_pointer(@selector(setEventHandler:andSelector:forEventClass:andEventID:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeEventHandlerForEventClass:andEventID:");
   arg2 = caml_wrap_pointer(@selector(removeEventHandlerForEventClass:andEventID:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("dispatchRawAppleEvent:withRawReply:handlerRefCon:");
   arg2 = caml_wrap_pointer(@selector(dispatchRawAppleEvent:withRawReply:handlerRefCon:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("currentAppleEvent:");
   arg2 = caml_wrap_pointer(@selector(currentAppleEvent ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("currentReplyAppleEvent:");
   arg2 = caml_wrap_pointer(@selector(currentReplyAppleEvent ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("suspendCurrentAppleEvent:");
   arg2 = caml_wrap_pointer(@selector(suspendCurrentAppleEvent ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("appleEventForSuspensionID:");
   arg2 = caml_wrap_pointer(@selector(appleEventForSuspensionID:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("replyAppleEventForSuspensionID:");
   arg2 = caml_wrap_pointer(@selector(replyAppleEventForSuspensionID:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCurrentAppleEventAndReplyEventWithSuspensionID:");
   arg2 = caml_wrap_pointer(@selector(setCurrentAppleEventAndReplyEventWithSuspensionID:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("resumeWithSuspensionID:");
   arg2 = caml_wrap_pointer(@selector(resumeWithSuspensionID:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
