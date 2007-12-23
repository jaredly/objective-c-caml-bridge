#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSSpeechRecognizer.h>
value caml_init_NSSpeechRecognizer(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSSpeechRecognizer");
   arg2 = caml_wrap_id([NSSpeechRecognizer class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("init:");
   arg2 = caml_wrap_pointer(@selector(init ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("startListening:");
   arg2 = caml_wrap_pointer(@selector(startListening ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stopListening:");
   arg2 = caml_wrap_pointer(@selector(stopListening ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("delegate:");
   arg2 = caml_wrap_pointer(@selector(delegate ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDelegate:");
   arg2 = caml_wrap_pointer(@selector(setDelegate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("commands:");
   arg2 = caml_wrap_pointer(@selector(commands ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCommands:");
   arg2 = caml_wrap_pointer(@selector(setCommands:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("displayedCommandsTitle:");
   arg2 = caml_wrap_pointer(@selector(displayedCommandsTitle ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDisplayedCommandsTitle:");
   arg2 = caml_wrap_pointer(@selector(setDisplayedCommandsTitle:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("listensInForegroundOnly:");
   arg2 = caml_wrap_pointer(@selector(listensInForegroundOnly ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setListensInForegroundOnly:");
   arg2 = caml_wrap_pointer(@selector(setListensInForegroundOnly:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("blocksOtherRecognizers:");
   arg2 = caml_wrap_pointer(@selector(blocksOtherRecognizers ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setBlocksOtherRecognizers:");
   arg2 = caml_wrap_pointer(@selector(setBlocksOtherRecognizers:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("speechRecognizer:didRecognizeCommand:");
   arg2 = caml_wrap_pointer(@selector(speechRecognizer:didRecognizeCommand:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
