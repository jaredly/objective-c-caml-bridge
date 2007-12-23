#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSFormCell.h>
value caml_init_NSFormCell(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSFormCell");
   arg2 = caml_wrap_id([NSFormCell class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("attributedTitle:");
   arg2 = caml_wrap_pointer(@selector(attributedTitle ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAttributedTitle:");
   arg2 = caml_wrap_pointer(@selector(setAttributedTitle:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTitleWithMnemonic:");
   arg2 = caml_wrap_pointer(@selector(setTitleWithMnemonic:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initTextCell:");
   arg2 = caml_wrap_pointer(@selector(initTextCell:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("titleWidth:");
   arg2 = caml_wrap_pointer(@selector(titleWidth:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("titleWidth:");
   arg2 = caml_wrap_pointer(@selector(titleWidth ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTitleWidth:");
   arg2 = caml_wrap_pointer(@selector(setTitleWidth:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("title:");
   arg2 = caml_wrap_pointer(@selector(title ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTitle:");
   arg2 = caml_wrap_pointer(@selector(setTitle:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("titleFont:");
   arg2 = caml_wrap_pointer(@selector(titleFont ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTitleFont:");
   arg2 = caml_wrap_pointer(@selector(setTitleFont:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("titleAlignment:");
   arg2 = caml_wrap_pointer(@selector(titleAlignment ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTitleAlignment:");
   arg2 = caml_wrap_pointer(@selector(setTitleAlignment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isOpaque:");
   arg2 = caml_wrap_pointer(@selector(isOpaque ));
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
   arg1 = caml_copy_string("titleBaseWritingDirection:");
   arg2 = caml_wrap_pointer(@selector(titleBaseWritingDirection ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTitleBaseWritingDirection:");
   arg2 = caml_wrap_pointer(@selector(setTitleBaseWritingDirection:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
