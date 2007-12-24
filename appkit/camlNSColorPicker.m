// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSColorPicker.h>
value caml_init_NSColorPicker(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSColorPicker");
   arg2 = caml_wrap_id([NSColorPicker class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithPickerMask:colorPanel:");
   arg2 = caml_wrap_pointer(@selector(initWithPickerMask:colorPanel:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("colorPanel:");
   arg2 = caml_wrap_pointer(@selector(colorPanel ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("provideNewButtonImage:");
   arg2 = caml_wrap_pointer(@selector(provideNewButtonImage ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("insertNewButtonImage:l_in:");
   arg2 = caml_wrap_pointer(@selector(insertNewButtonImage:l_in:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("viewSizeChanged:");
   arg2 = caml_wrap_pointer(@selector(viewSizeChanged:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("attachColorList:");
   arg2 = caml_wrap_pointer(@selector(attachColorList:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("detachColorList:");
   arg2 = caml_wrap_pointer(@selector(detachColorList:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setMode:");
   arg2 = caml_wrap_pointer(@selector(setMode:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
