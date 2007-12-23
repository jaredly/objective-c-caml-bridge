#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSGeometry.h>
value caml_init_NSGeometry(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSCoder");
   arg2 = caml_wrap_id([NSCoder class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("encodePoint:");
   arg2 = caml_wrap_pointer(@selector(encodePoint:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("decodePoint:");
   arg2 = caml_wrap_pointer(@selector(decodePoint ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("encodeSize:");
   arg2 = caml_wrap_pointer(@selector(encodeSize:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("decodeSize:");
   arg2 = caml_wrap_pointer(@selector(decodeSize ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("encodeRect:");
   arg2 = caml_wrap_pointer(@selector(encodeRect:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("decodeRect:");
   arg2 = caml_wrap_pointer(@selector(decodeRect ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSValue");
   arg2 = caml_wrap_id([NSValue class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("valueWithPoint:");
   arg2 = caml_wrap_pointer(@selector(valueWithPoint:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("valueWithSize:");
   arg2 = caml_wrap_pointer(@selector(valueWithSize:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("valueWithRect:");
   arg2 = caml_wrap_pointer(@selector(valueWithRect:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("pointValue:");
   arg2 = caml_wrap_pointer(@selector(pointValue ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("sizeValue:");
   arg2 = caml_wrap_pointer(@selector(sizeValue ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("rectValue:");
   arg2 = caml_wrap_pointer(@selector(rectValue ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
