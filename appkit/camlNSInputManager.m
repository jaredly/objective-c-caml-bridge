#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSInputManager.h>
value caml_init_NSInputManager(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSInputManager");
   arg2 = caml_wrap_id([NSInputManager class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("currentInputManager:");
   arg2 = caml_wrap_pointer(@selector(currentInputManager ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cycleToNextInputLanguage:");
   arg2 = caml_wrap_pointer(@selector(cycleToNextInputLanguage:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cycleToNextInputServerInLanguage:");
   arg2 = caml_wrap_pointer(@selector(cycleToNextInputServerInLanguage:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithName:host:");
   arg2 = caml_wrap_pointer(@selector(initWithName:host:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("localizedInputManagerName:");
   arg2 = caml_wrap_pointer(@selector(localizedInputManagerName ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("markedTextAbandoned:");
   arg2 = caml_wrap_pointer(@selector(markedTextAbandoned:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("markedTextSelectionChanged:client:");
   arg2 = caml_wrap_pointer(@selector(markedTextSelectionChanged:client:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("wantsToInterpretAllKeystrokes:");
   arg2 = caml_wrap_pointer(@selector(wantsToInterpretAllKeystrokes ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("language:");
   arg2 = caml_wrap_pointer(@selector(language ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("image:");
   arg2 = caml_wrap_pointer(@selector(image ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("server:");
   arg2 = caml_wrap_pointer(@selector(server ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("wantsToHandleMouseEvents:");
   arg2 = caml_wrap_pointer(@selector(wantsToHandleMouseEvents ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("handleMouseEvent:");
   arg2 = caml_wrap_pointer(@selector(handleMouseEvent:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("wantsToDelayTextChangeNotifications:");
   arg2 = caml_wrap_pointer(@selector(wantsToDelayTextChangeNotifications ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
