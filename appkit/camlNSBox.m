// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSBox.h>
value caml_init_NSBox(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSBox");
   arg2 = caml_wrap_id([NSBox class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setTitleWithMnemonic:");
   arg2 = caml_wrap_pointer(@selector(setTitleWithMnemonic:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("borderType:");
   arg2 = caml_wrap_pointer(@selector(borderType ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("titlePosition:");
   arg2 = caml_wrap_pointer(@selector(titlePosition ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setBorderType:");
   arg2 = caml_wrap_pointer(@selector(setBorderType:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setBoxType:");
   arg2 = caml_wrap_pointer(@selector(setBoxType:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("boxType:");
   arg2 = caml_wrap_pointer(@selector(boxType ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTitlePosition:");
   arg2 = caml_wrap_pointer(@selector(setTitlePosition:));
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
   arg1 = caml_copy_string("borderRect:");
   arg2 = caml_wrap_pointer(@selector(borderRect ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("titleRect:");
   arg2 = caml_wrap_pointer(@selector(titleRect ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("titleCell:");
   arg2 = caml_wrap_pointer(@selector(titleCell ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("sizeToFit:");
   arg2 = caml_wrap_pointer(@selector(sizeToFit ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("contentViewMargins:");
   arg2 = caml_wrap_pointer(@selector(contentViewMargins ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setContentViewMargins:");
   arg2 = caml_wrap_pointer(@selector(setContentViewMargins:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setFrameFromContentFrame:");
   arg2 = caml_wrap_pointer(@selector(setFrameFromContentFrame:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("contentView:");
   arg2 = caml_wrap_pointer(@selector(contentView ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setContentView:");
   arg2 = caml_wrap_pointer(@selector(setContentView:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
