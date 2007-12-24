// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSSound.h>
value caml_init_NSSound(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSSound");
   arg2 = caml_wrap_id([NSSound class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("soundNamed:");
   arg2 = caml_wrap_pointer(@selector(soundNamed:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithContentsOfURL:byReference:");
   arg2 = caml_wrap_pointer(@selector(initWithContentsOfURL:byReference:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithContentsOfFile:byReference:");
   arg2 = caml_wrap_pointer(@selector(initWithContentsOfFile:byReference:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithData:");
   arg2 = caml_wrap_pointer(@selector(initWithData:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setName:");
   arg2 = caml_wrap_pointer(@selector(setName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("name:");
   arg2 = caml_wrap_pointer(@selector(name ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("canInitWithPasteboard:");
   arg2 = caml_wrap_pointer(@selector(canInitWithPasteboard:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("soundUnfilteredFileTypes:");
   arg2 = caml_wrap_pointer(@selector(soundUnfilteredFileTypes ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("soundUnfilteredPasteboardTypes:");
   arg2 = caml_wrap_pointer(@selector(soundUnfilteredPasteboardTypes ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithPasteboard:");
   arg2 = caml_wrap_pointer(@selector(initWithPasteboard:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("writeToPasteboard:");
   arg2 = caml_wrap_pointer(@selector(writeToPasteboard:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("play:");
   arg2 = caml_wrap_pointer(@selector(play ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("pause:");
   arg2 = caml_wrap_pointer(@selector(pause ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("resume:");
   arg2 = caml_wrap_pointer(@selector(resume ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stop:");
   arg2 = caml_wrap_pointer(@selector(stop ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isPlaying:");
   arg2 = caml_wrap_pointer(@selector(isPlaying ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("delegate:");
   arg2 = caml_wrap_pointer(@selector(delegate ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDelegate:");
   arg2 = caml_wrap_pointer(@selector(setDelegate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sound:didFinishPlaying:");
   arg2 = caml_wrap_pointer(@selector(sound:didFinishPlaying:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSBundle");
   arg2 = caml_wrap_id([NSBundle class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("pathForSoundResource:");
   arg2 = caml_wrap_pointer(@selector(pathForSoundResource:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
