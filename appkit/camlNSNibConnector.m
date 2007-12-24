// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSNibConnector.h>
value caml_init_NSNibConnector(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSNibConnector");
   arg2 = caml_wrap_id([NSNibConnector class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("source:");
   arg2 = caml_wrap_pointer(@selector(source ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setSource:");
   arg2 = caml_wrap_pointer(@selector(setSource:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("destination:");
   arg2 = caml_wrap_pointer(@selector(destination ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDestination:");
   arg2 = caml_wrap_pointer(@selector(setDestination:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("label:");
   arg2 = caml_wrap_pointer(@selector(label ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setLabel:");
   arg2 = caml_wrap_pointer(@selector(setLabel:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("replaceObject:withObject:");
   arg2 = caml_wrap_pointer(@selector(replaceObject:withObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("establishConnection:");
   arg2 = caml_wrap_pointer(@selector(establishConnection ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
