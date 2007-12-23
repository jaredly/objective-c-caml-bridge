#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSOpenGLView.h>
value caml_init_NSOpenGLView(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSOpenGLView");
   arg2 = caml_wrap_id([NSOpenGLView class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("defaultPixelFormat:");
   arg2 = caml_wrap_pointer(@selector(defaultPixelFormat ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithFrame:pixelFormat:");
   arg2 = caml_wrap_pointer(@selector(initWithFrame:pixelFormat:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setOpenGLContext:");
   arg2 = caml_wrap_pointer(@selector(setOpenGLContext:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("openGLContext:");
   arg2 = caml_wrap_pointer(@selector(openGLContext ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("clearGLContext:");
   arg2 = caml_wrap_pointer(@selector(clearGLContext ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("update:");
   arg2 = caml_wrap_pointer(@selector(update ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("reshape:");
   arg2 = caml_wrap_pointer(@selector(reshape ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setPixelFormat:");
   arg2 = caml_wrap_pointer(@selector(setPixelFormat:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("pixelFormat:");
   arg2 = caml_wrap_pointer(@selector(pixelFormat ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("prepareOpenGL:");
   arg2 = caml_wrap_pointer(@selector(prepareOpenGL ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
