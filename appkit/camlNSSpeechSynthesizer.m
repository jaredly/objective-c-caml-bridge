// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSSpeechSynthesizer.h>
value caml_init_NSSpeechSynthesizer(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSSpeechSynthesizer");
   arg2 = caml_wrap_id([NSSpeechSynthesizer class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithVoice:");
   arg2 = caml_wrap_pointer(@selector(initWithVoice:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("startSpeakingString:");
   arg2 = caml_wrap_pointer(@selector(startSpeakingString:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("startSpeakingString:toURL:");
   arg2 = caml_wrap_pointer(@selector(startSpeakingString:toURL:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stopSpeaking:");
   arg2 = caml_wrap_pointer(@selector(stopSpeaking ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isSpeaking:");
   arg2 = caml_wrap_pointer(@selector(isSpeaking ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("delegate:");
   arg2 = caml_wrap_pointer(@selector(delegate ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDelegate:");
   arg2 = caml_wrap_pointer(@selector(setDelegate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("voice:");
   arg2 = caml_wrap_pointer(@selector(voice ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setVoice:");
   arg2 = caml_wrap_pointer(@selector(setVoice:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("usesFeedbackWindow:");
   arg2 = caml_wrap_pointer(@selector(usesFeedbackWindow ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setUsesFeedbackWindow:");
   arg2 = caml_wrap_pointer(@selector(setUsesFeedbackWindow:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isAnyApplicationSpeaking:");
   arg2 = caml_wrap_pointer(@selector(isAnyApplicationSpeaking ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("defaultVoice:");
   arg2 = caml_wrap_pointer(@selector(defaultVoice ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("availableVoices:");
   arg2 = caml_wrap_pointer(@selector(availableVoices ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("attributesForVoice:");
   arg2 = caml_wrap_pointer(@selector(attributesForVoice:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("speechSynthesizer:didFinishSpeaking:");
   arg2 = caml_wrap_pointer(@selector(speechSynthesizer:didFinishSpeaking:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("speechSynthesizer:willSpeakWord:ofString:");
   arg2 = caml_wrap_pointer(@selector(speechSynthesizer:willSpeakWord:ofString:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("speechSynthesizer:willSpeakPhoneme:");
   arg2 = caml_wrap_pointer(@selector(speechSynthesizer:willSpeakPhoneme:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
