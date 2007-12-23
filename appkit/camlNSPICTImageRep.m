#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSPICTImageRep.h>
value caml_init_NSPICTImageRep(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSPICTImageRep");
   arg2 = caml_wrap_id([NSPICTImageRep class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("imageRepWithData:");
   arg2 = caml_wrap_pointer(@selector(imageRepWithData:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithData:");
   arg2 = caml_wrap_pointer(@selector(initWithData:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_PICTRepresentation:");
   arg2 = caml_wrap_pointer(@selector(l_PICTRepresentation ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("boundingBox:");
   arg2 = caml_wrap_pointer(@selector(boundingBox ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
