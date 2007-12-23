#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSFormatter.h>
value caml_init_NSFormatter(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSFormatter");
   arg2 = caml_wrap_id([NSFormatter class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("stringForObjectValue:");
   arg2 = caml_wrap_pointer(@selector(stringForObjectValue:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("attributedStringForObjectValue:withDefaultAttributes:");
   arg2 = caml_wrap_pointer(@selector(attributedStringForObjectValue:withDefaultAttributes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("editingStringForObjectValue:");
   arg2 = caml_wrap_pointer(@selector(editingStringForObjectValue:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("getObjectValue:forString:errorDescription:");
   arg2 = caml_wrap_pointer(@selector(getObjectValue:forString:errorDescription:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isPartialStringValid:newEditingString:errorDescription:");
   arg2 = caml_wrap_pointer(@selector(isPartialStringValid:newEditingString:errorDescription:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isPartialStringValid:proposedSelectedRange:originalString:originalSelectedRange:errorDescription:");
   arg2 = caml_wrap_pointer(@selector(isPartialStringValid:proposedSelectedRange:originalString:originalSelectedRange:errorDescription:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
