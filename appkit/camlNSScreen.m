#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSScreen.h>
value caml_init_NSScreen(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSScreen");
   arg2 = caml_wrap_id([NSScreen class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("screens:");
   arg2 = caml_wrap_pointer(@selector(screens ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("mainScreen:");
   arg2 = caml_wrap_pointer(@selector(mainScreen ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("deepestScreen:");
   arg2 = caml_wrap_pointer(@selector(deepestScreen ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("depth:");
   arg2 = caml_wrap_pointer(@selector(depth ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("frame:");
   arg2 = caml_wrap_pointer(@selector(frame ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("visibleFrame:");
   arg2 = caml_wrap_pointer(@selector(visibleFrame ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("deviceDescription:");
   arg2 = caml_wrap_pointer(@selector(deviceDescription ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("supportedWindowDepths:");
   arg2 = caml_wrap_pointer(@selector(supportedWindowDepths ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("userSpaceScaleFactor:");
   arg2 = caml_wrap_pointer(@selector(userSpaceScaleFactor ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
