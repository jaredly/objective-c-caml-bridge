#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSSegmentedControl.h>
value caml_init_NSSegmentedControl(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSSegmentedControl");
   arg2 = caml_wrap_id([NSSegmentedControl class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setSegmentCount:");
   arg2 = caml_wrap_pointer(@selector(setSegmentCount:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("segmentCount:");
   arg2 = caml_wrap_pointer(@selector(segmentCount ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setSelectedSegment:");
   arg2 = caml_wrap_pointer(@selector(setSelectedSegment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("selectedSegment:");
   arg2 = caml_wrap_pointer(@selector(selectedSegment ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("selectSegmentWithTag:");
   arg2 = caml_wrap_pointer(@selector(selectSegmentWithTag:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setWidth:forSegment:");
   arg2 = caml_wrap_pointer(@selector(setWidth:forSegment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("widthForSegment:");
   arg2 = caml_wrap_pointer(@selector(widthForSegment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setImage:forSegment:");
   arg2 = caml_wrap_pointer(@selector(setImage:forSegment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("imageForSegment:");
   arg2 = caml_wrap_pointer(@selector(imageForSegment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setLabel:forSegment:");
   arg2 = caml_wrap_pointer(@selector(setLabel:forSegment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("labelForSegment:");
   arg2 = caml_wrap_pointer(@selector(labelForSegment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setMenu:forSegment:");
   arg2 = caml_wrap_pointer(@selector(setMenu:forSegment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("menuForSegment:");
   arg2 = caml_wrap_pointer(@selector(menuForSegment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setSelected:forSegment:");
   arg2 = caml_wrap_pointer(@selector(setSelected:forSegment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isSelectedForSegment:");
   arg2 = caml_wrap_pointer(@selector(isSelectedForSegment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setEnabled:forSegment:");
   arg2 = caml_wrap_pointer(@selector(setEnabled:forSegment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isEnabledForSegment:");
   arg2 = caml_wrap_pointer(@selector(isEnabledForSegment:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
