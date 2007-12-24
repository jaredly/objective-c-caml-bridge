// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSEPSImageRep.h>
value caml_init_NSEPSImageRep(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSEPSImageRep");
   arg2 = caml_wrap_id([NSEPSImageRep class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("imageRepWithData:");
   arg2 = caml_wrap_pointer(@selector(imageRepWithData:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithData:");
   arg2 = caml_wrap_pointer(@selector(initWithData:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("prepareGState:");
   arg2 = caml_wrap_pointer(@selector(prepareGState ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_EPSRepresentation:");
   arg2 = caml_wrap_pointer(@selector(l_EPSRepresentation ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("boundingBox:");
   arg2 = caml_wrap_pointer(@selector(boundingBox ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
