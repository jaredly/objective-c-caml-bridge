// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSRange.h>
value caml_init_NSRange(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSValue");
   arg2 = caml_wrap_id([NSValue class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("valueWithRange:");
   arg2 = caml_wrap_pointer(@selector(valueWithRange:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("rangeValue:");
   arg2 = caml_wrap_pointer(@selector(rangeValue ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
