// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSHelpManager.h>
value caml_init_NSHelpManager(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSHelpManager");
   arg2 = caml_wrap_id([NSHelpManager class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedHelpManager:");
   arg2 = caml_wrap_pointer(@selector(sharedHelpManager ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setContextHelpModeActive:");
   arg2 = caml_wrap_pointer(@selector(setContextHelpModeActive:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isContextHelpModeActive:");
   arg2 = caml_wrap_pointer(@selector(isContextHelpModeActive ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setContextHelp:forObject:");
   arg2 = caml_wrap_pointer(@selector(setContextHelp:forObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeContextHelpForObject:");
   arg2 = caml_wrap_pointer(@selector(removeContextHelpForObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("contextHelpForObject:");
   arg2 = caml_wrap_pointer(@selector(contextHelpForObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("showContextHelpForObject:locationHint:");
   arg2 = caml_wrap_pointer(@selector(showContextHelpForObject:locationHint:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("openHelpAnchor:inBook:");
   arg2 = caml_wrap_pointer(@selector(openHelpAnchor:inBook:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("findString:inBook:");
   arg2 = caml_wrap_pointer(@selector(findString:inBook:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSBundle");
   arg2 = caml_wrap_id([NSBundle class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("contextHelpForKey:");
   arg2 = caml_wrap_pointer(@selector(contextHelpForKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSApplication");
   arg2 = caml_wrap_id([NSApplication class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("activateContextHelpMode:");
   arg2 = caml_wrap_pointer(@selector(activateContextHelpMode:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("showHelp:");
   arg2 = caml_wrap_pointer(@selector(showHelp:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
