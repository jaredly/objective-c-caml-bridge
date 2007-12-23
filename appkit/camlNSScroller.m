#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSScroller.h>
value caml_init_NSScroller(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSScroller");
   arg2 = caml_wrap_id([NSScroller class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("scrollerWidth:");
   arg2 = caml_wrap_pointer(@selector(scrollerWidth ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("scrollerWidthForControlSize:");
   arg2 = caml_wrap_pointer(@selector(scrollerWidthForControlSize:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawParts:");
   arg2 = caml_wrap_pointer(@selector(drawParts ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("rectForPart:");
   arg2 = caml_wrap_pointer(@selector(rectForPart:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("checkSpaceForParts:");
   arg2 = caml_wrap_pointer(@selector(checkSpaceForParts ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("usableParts:");
   arg2 = caml_wrap_pointer(@selector(usableParts ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setArrowsPosition:");
   arg2 = caml_wrap_pointer(@selector(setArrowsPosition:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("arrowsPosition:");
   arg2 = caml_wrap_pointer(@selector(arrowsPosition ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setControlTint:");
   arg2 = caml_wrap_pointer(@selector(setControlTint:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("controlTint:");
   arg2 = caml_wrap_pointer(@selector(controlTint ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setControlSize:");
   arg2 = caml_wrap_pointer(@selector(setControlSize:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("controlSize:");
   arg2 = caml_wrap_pointer(@selector(controlSize ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawArrow:highlight:");
   arg2 = caml_wrap_pointer(@selector(drawArrow:highlight:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawKnob:");
   arg2 = caml_wrap_pointer(@selector(drawKnob ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("highlight:");
   arg2 = caml_wrap_pointer(@selector(highlight:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("testPart:");
   arg2 = caml_wrap_pointer(@selector(testPart:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("trackKnob:");
   arg2 = caml_wrap_pointer(@selector(trackKnob:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("trackScrollButtons:");
   arg2 = caml_wrap_pointer(@selector(trackScrollButtons:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("hitPart:");
   arg2 = caml_wrap_pointer(@selector(hitPart ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setFloatValue:knobProportion:");
   arg2 = caml_wrap_pointer(@selector(setFloatValue:knobProportion:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("knobProportion:");
   arg2 = caml_wrap_pointer(@selector(knobProportion ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
