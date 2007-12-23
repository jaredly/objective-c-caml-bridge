#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSCIImageRep.h>
value caml_init_NSCIImageRep(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSCIImageRep");
   arg2 = caml_wrap_id([NSCIImageRep class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("imageRepWithCIImage:");
   arg2 = caml_wrap_pointer(@selector(imageRepWithCIImage:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithCIImage:");
   arg2 = caml_wrap_pointer(@selector(initWithCIImage:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_CIImage:");
   arg2 = caml_wrap_pointer(@selector(l_CIImage ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("CIImage");
   arg2 = caml_wrap_id([CIImage class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithBitmapImageRep:");
   arg2 = caml_wrap_pointer(@selector(initWithBitmapImageRep:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawInRect:fromRect:operation:fraction:");
   arg2 = caml_wrap_pointer(@selector(drawInRect:fromRect:operation:fraction:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawAtPoint:fromRect:operation:fraction:");
   arg2 = caml_wrap_pointer(@selector(drawAtPoint:fromRect:operation:fraction:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
