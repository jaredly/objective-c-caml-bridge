// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSKeyValueBinding.h>
value caml_init_NSKeyValueBinding(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("discardEditing:");
   arg2 = caml_wrap_pointer(@selector(discardEditing ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("commitEditing:");
   arg2 = caml_wrap_pointer(@selector(commitEditing ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("commitEditingWithDelegate:didCommitSelector:contextInfo:");
   arg2 = caml_wrap_pointer(@selector(commitEditingWithDelegate:didCommitSelector:contextInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("objectDidBeginEditing:");
   arg2 = caml_wrap_pointer(@selector(objectDidBeginEditing:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("objectDidEndEditing:");
   arg2 = caml_wrap_pointer(@selector(objectDidEndEditing:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDefaultPlaceholder:forMarker:withBinding:");
   arg2 = caml_wrap_pointer(@selector(setDefaultPlaceholder:forMarker:withBinding:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("defaultPlaceholderForMarker:withBinding:");
   arg2 = caml_wrap_pointer(@selector(defaultPlaceholderForMarker:withBinding:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("exposeBinding:");
   arg2 = caml_wrap_pointer(@selector(exposeBinding:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("exposedBindings:");
   arg2 = caml_wrap_pointer(@selector(exposedBindings ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("valueClassForBinding:");
   arg2 = caml_wrap_pointer(@selector(valueClassForBinding:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("bind:toObject:withKeyPath:options:");
   arg2 = caml_wrap_pointer(@selector(bind:toObject:withKeyPath:options:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("unbind:");
   arg2 = caml_wrap_pointer(@selector(unbind:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("infoForBinding:");
   arg2 = caml_wrap_pointer(@selector(infoForBinding:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
