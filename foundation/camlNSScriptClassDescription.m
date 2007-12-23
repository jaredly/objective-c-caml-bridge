#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSScriptClassDescription.h>
value caml_init_NSScriptClassDescription(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("classCode:");
   arg2 = caml_wrap_pointer(@selector(classCode ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("className:");
   arg2 = caml_wrap_pointer(@selector(className ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSScriptClassDescription");
   arg2 = caml_wrap_id([NSScriptClassDescription class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithSuiteName:className:dictionary:");
   arg2 = caml_wrap_pointer(@selector(initWithSuiteName:className:dictionary:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("suiteName:");
   arg2 = caml_wrap_pointer(@selector(suiteName ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("className:");
   arg2 = caml_wrap_pointer(@selector(className ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("superclassDescription:");
   arg2 = caml_wrap_pointer(@selector(superclassDescription ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("appleEventCode:");
   arg2 = caml_wrap_pointer(@selector(appleEventCode ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("matchesAppleEventCode:");
   arg2 = caml_wrap_pointer(@selector(matchesAppleEventCode:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("supportsCommand:");
   arg2 = caml_wrap_pointer(@selector(supportsCommand:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("selectorForCommand:");
   arg2 = caml_wrap_pointer(@selector(selectorForCommand:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("typeForKey:");
   arg2 = caml_wrap_pointer(@selector(typeForKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("classDescriptionForKey:");
   arg2 = caml_wrap_pointer(@selector(classDescriptionForKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("appleEventCodeForKey:");
   arg2 = caml_wrap_pointer(@selector(appleEventCodeForKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isReadOnlyKey:");
   arg2 = caml_wrap_pointer(@selector(isReadOnlyKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("keyWithAppleEventCode:");
   arg2 = caml_wrap_pointer(@selector(keyWithAppleEventCode:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("defaultSubcontainerAttributeKey:");
   arg2 = caml_wrap_pointer(@selector(defaultSubcontainerAttributeKey ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isLocationRequiredToCreateForKey:");
   arg2 = caml_wrap_pointer(@selector(isLocationRequiredToCreateForKey:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
