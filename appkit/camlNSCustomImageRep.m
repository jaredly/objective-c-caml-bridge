// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSCustomImageRep.h>
value caml_init_NSCustomImageRep(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSCustomImageRep");
   arg2 = caml_wrap_id([NSCustomImageRep class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithDrawSelector:delegate:");
   arg2 = caml_wrap_pointer(@selector(initWithDrawSelector:delegate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawSelector:");
   arg2 = caml_wrap_pointer(@selector(drawSelector ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("delegate:");
   arg2 = caml_wrap_pointer(@selector(delegate ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
