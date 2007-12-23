#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSImageView.h>
value caml_init_NSImageView(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSImageView");
   arg2 = caml_wrap_id([NSImageView class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("image:");
   arg2 = caml_wrap_pointer(@selector(image ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setImage:");
   arg2 = caml_wrap_pointer(@selector(setImage:));
   caml_callback2(*register_selector, arg1, arg2);
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
   arg1 = caml_copy_string("setEditable:");
   arg2 = caml_wrap_pointer(@selector(setEditable:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isEditable:");
   arg2 = caml_wrap_pointer(@selector(isEditable ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAnimates:");
   arg2 = caml_wrap_pointer(@selector(setAnimates:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("animates:");
   arg2 = caml_wrap_pointer(@selector(animates ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("allowsCutCopyPaste:");
   arg2 = caml_wrap_pointer(@selector(allowsCutCopyPaste ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAllowsCutCopyPaste:");
   arg2 = caml_wrap_pointer(@selector(setAllowsCutCopyPaste:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
