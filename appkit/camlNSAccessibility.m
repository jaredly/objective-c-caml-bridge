// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSAccessibility.h>
value caml_init_NSAccessibility(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("accessibilitySetOverrideValue:forAttribute:");
   arg2 = caml_wrap_pointer(@selector(accessibilitySetOverrideValue:forAttribute:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessibilityAttributeNames:");
   arg2 = caml_wrap_pointer(@selector(accessibilityAttributeNames ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessibilityAttributeValue:");
   arg2 = caml_wrap_pointer(@selector(accessibilityAttributeValue:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessibilityIsAttributeSettable:");
   arg2 = caml_wrap_pointer(@selector(accessibilityIsAttributeSettable:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessibilitySetValue:forAttribute:");
   arg2 = caml_wrap_pointer(@selector(accessibilitySetValue:forAttribute:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessibilityParameterizedAttributeNames:");
   arg2 = caml_wrap_pointer(@selector(accessibilityParameterizedAttributeNames ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessibilityAttributeValue:forParameter:");
   arg2 = caml_wrap_pointer(@selector(accessibilityAttributeValue:forParameter:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessibilityActionNames:");
   arg2 = caml_wrap_pointer(@selector(accessibilityActionNames ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessibilityActionDescription:");
   arg2 = caml_wrap_pointer(@selector(accessibilityActionDescription:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessibilityPerformAction:");
   arg2 = caml_wrap_pointer(@selector(accessibilityPerformAction:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessibilityIsIgnored:");
   arg2 = caml_wrap_pointer(@selector(accessibilityIsIgnored ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessibilityHitTest:");
   arg2 = caml_wrap_pointer(@selector(accessibilityHitTest:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessibilityFocusedUIElement:");
   arg2 = caml_wrap_pointer(@selector(accessibilityFocusedUIElement ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
