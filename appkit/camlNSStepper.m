// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSStepper.h>
value caml_init_NSStepper(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSStepper");
   arg2 = caml_wrap_id([NSStepper class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("minValue:");
   arg2 = caml_wrap_pointer(@selector(minValue ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setMinValue:");
   arg2 = caml_wrap_pointer(@selector(setMinValue:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("maxValue:");
   arg2 = caml_wrap_pointer(@selector(maxValue ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setMaxValue:");
   arg2 = caml_wrap_pointer(@selector(setMaxValue:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("increment:");
   arg2 = caml_wrap_pointer(@selector(increment ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setIncrement:");
   arg2 = caml_wrap_pointer(@selector(setIncrement:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("valueWraps:");
   arg2 = caml_wrap_pointer(@selector(valueWraps ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setValueWraps:");
   arg2 = caml_wrap_pointer(@selector(setValueWraps:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("autorepeat:");
   arg2 = caml_wrap_pointer(@selector(autorepeat ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAutorepeat:");
   arg2 = caml_wrap_pointer(@selector(setAutorepeat:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
