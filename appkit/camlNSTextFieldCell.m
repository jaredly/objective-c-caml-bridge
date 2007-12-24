// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSTextFieldCell.h>
value caml_init_NSTextFieldCell(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSTextFieldCell");
   arg2 = caml_wrap_id([NSTextFieldCell class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setBackgroundColor:");
   arg2 = caml_wrap_pointer(@selector(setBackgroundColor:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("backgroundColor:");
   arg2 = caml_wrap_pointer(@selector(backgroundColor ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDrawsBackground:");
   arg2 = caml_wrap_pointer(@selector(setDrawsBackground:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawsBackground:");
   arg2 = caml_wrap_pointer(@selector(drawsBackground ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTextColor:");
   arg2 = caml_wrap_pointer(@selector(setTextColor:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("textColor:");
   arg2 = caml_wrap_pointer(@selector(textColor ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setUpFieldEditorAttributes:");
   arg2 = caml_wrap_pointer(@selector(setUpFieldEditorAttributes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setBezelStyle:");
   arg2 = caml_wrap_pointer(@selector(setBezelStyle:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("bezelStyle:");
   arg2 = caml_wrap_pointer(@selector(bezelStyle ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setPlaceholderString:");
   arg2 = caml_wrap_pointer(@selector(setPlaceholderString:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("placeholderString:");
   arg2 = caml_wrap_pointer(@selector(placeholderString ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setPlaceholderAttributedString:");
   arg2 = caml_wrap_pointer(@selector(setPlaceholderAttributedString:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("placeholderAttributedString:");
   arg2 = caml_wrap_pointer(@selector(placeholderAttributedString ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
