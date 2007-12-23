#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSImageCell.h>
value caml_init_NSImageCell(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSImageCell");
   arg2 = caml_wrap_id([NSImageCell class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("imageAlignment:");
   arg2 = caml_wrap_pointer(@selector(imageAlignment ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setImageAlignment:");
   arg2 = caml_wrap_pointer(@selector(setImageAlignment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("imageScaling:");
   arg2 = caml_wrap_pointer(@selector(imageScaling ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setImageScaling:");
   arg2 = caml_wrap_pointer(@selector(setImageScaling:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("imageFrameStyle:");
   arg2 = caml_wrap_pointer(@selector(imageFrameStyle ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setImageFrameStyle:");
   arg2 = caml_wrap_pointer(@selector(setImageFrameStyle:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
