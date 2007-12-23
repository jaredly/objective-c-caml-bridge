#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSStringDrawing.h>
value caml_init_NSStringDrawing(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSString");
   arg2 = caml_wrap_id([NSString class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("drawWithRect:options:attributes:");
   arg2 = caml_wrap_pointer(@selector(drawWithRect:options:attributes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("boundingRectWithSize:options:attributes:");
   arg2 = caml_wrap_pointer(@selector(boundingRectWithSize:options:attributes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("sizeWithAttributes:");
   arg2 = caml_wrap_pointer(@selector(sizeWithAttributes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawAtPoint:withAttributes:");
   arg2 = caml_wrap_pointer(@selector(drawAtPoint:withAttributes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawInRect:withAttributes:");
   arg2 = caml_wrap_pointer(@selector(drawInRect:withAttributes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSAttributedString");
   arg2 = caml_wrap_id([NSAttributedString class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("drawWithRect:options:");
   arg2 = caml_wrap_pointer(@selector(drawWithRect:options:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("boundingRectWithSize:options:");
   arg2 = caml_wrap_pointer(@selector(boundingRectWithSize:options:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("size:");
   arg2 = caml_wrap_pointer(@selector(size ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawAtPoint:");
   arg2 = caml_wrap_pointer(@selector(drawAtPoint:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawInRect:");
   arg2 = caml_wrap_pointer(@selector(drawInRect:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
