#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSAffineTransform.h>
value caml_init_NSAffineTransform(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSAffineTransform");
   arg2 = caml_wrap_id([NSAffineTransform class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("transform:");
   arg2 = caml_wrap_pointer(@selector(transform ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithTransform:");
   arg2 = caml_wrap_pointer(@selector(initWithTransform:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("translateXBy:yBy:");
   arg2 = caml_wrap_pointer(@selector(translateXBy:yBy:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("rotateByDegrees:");
   arg2 = caml_wrap_pointer(@selector(rotateByDegrees:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("rotateByRadians:");
   arg2 = caml_wrap_pointer(@selector(rotateByRadians:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("scaleBy:");
   arg2 = caml_wrap_pointer(@selector(scaleBy:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("scaleXBy:yBy:");
   arg2 = caml_wrap_pointer(@selector(scaleXBy:yBy:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("invert:");
   arg2 = caml_wrap_pointer(@selector(invert ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("appendTransform:");
   arg2 = caml_wrap_pointer(@selector(appendTransform:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("prependTransform:");
   arg2 = caml_wrap_pointer(@selector(prependTransform:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("transformPoint:");
   arg2 = caml_wrap_pointer(@selector(transformPoint:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("transformSize:");
   arg2 = caml_wrap_pointer(@selector(transformSize:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("transformStruct:");
   arg2 = caml_wrap_pointer(@selector(transformStruct ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTransformStruct:");
   arg2 = caml_wrap_pointer(@selector(setTransformStruct:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
