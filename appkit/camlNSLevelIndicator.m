// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSLevelIndicator.h>
value caml_init_NSLevelIndicator(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSLevelIndicator");
   arg2 = caml_wrap_id([NSLevelIndicator class]);
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
   arg1 = caml_copy_string("warningValue:");
   arg2 = caml_wrap_pointer(@selector(warningValue ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setWarningValue:");
   arg2 = caml_wrap_pointer(@selector(setWarningValue:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("criticalValue:");
   arg2 = caml_wrap_pointer(@selector(criticalValue ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCriticalValue:");
   arg2 = caml_wrap_pointer(@selector(setCriticalValue:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tickMarkPosition:");
   arg2 = caml_wrap_pointer(@selector(tickMarkPosition ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTickMarkPosition:");
   arg2 = caml_wrap_pointer(@selector(setTickMarkPosition:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("numberOfTickMarks:");
   arg2 = caml_wrap_pointer(@selector(numberOfTickMarks ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setNumberOfTickMarks:");
   arg2 = caml_wrap_pointer(@selector(setNumberOfTickMarks:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("numberOfMajorTickMarks:");
   arg2 = caml_wrap_pointer(@selector(numberOfMajorTickMarks ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setNumberOfMajorTickMarks:");
   arg2 = caml_wrap_pointer(@selector(setNumberOfMajorTickMarks:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tickMarkValueAtIndex:");
   arg2 = caml_wrap_pointer(@selector(tickMarkValueAtIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("rectOfTickMarkAtIndex:");
   arg2 = caml_wrap_pointer(@selector(rectOfTickMarkAtIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
