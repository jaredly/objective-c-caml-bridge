#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSController.h>
value caml_init_NSController(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSController");
   arg2 = caml_wrap_id([NSController class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("objectDidBeginEditing:");
   arg2 = caml_wrap_pointer(@selector(objectDidBeginEditing:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("objectDidEndEditing:");
   arg2 = caml_wrap_pointer(@selector(objectDidEndEditing:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("discardEditing:");
   arg2 = caml_wrap_pointer(@selector(discardEditing ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("commitEditing:");
   arg2 = caml_wrap_pointer(@selector(commitEditing ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("commitEditingWithDelegate:didCommitSelector:contextInfo:");
   arg2 = caml_wrap_pointer(@selector(commitEditingWithDelegate:didCommitSelector:contextInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isEditing:");
   arg2 = caml_wrap_pointer(@selector(isEditing ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
