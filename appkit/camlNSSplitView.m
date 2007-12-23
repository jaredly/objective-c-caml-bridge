#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSSplitView.h>
value caml_init_NSSplitView(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("splitView:resizeSubviewsWithOldSize:");
   arg2 = caml_wrap_pointer(@selector(splitView:resizeSubviewsWithOldSize:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("splitView:constrainMinCoordinate:ofSubviewAt:");
   arg2 = caml_wrap_pointer(@selector(splitView:constrainMinCoordinate:ofSubviewAt:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("splitView:constrainMaxCoordinate:ofSubviewAt:");
   arg2 = caml_wrap_pointer(@selector(splitView:constrainMaxCoordinate:ofSubviewAt:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("splitViewWillResizeSubviews:");
   arg2 = caml_wrap_pointer(@selector(splitViewWillResizeSubviews:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("splitViewDidResizeSubviews:");
   arg2 = caml_wrap_pointer(@selector(splitViewDidResizeSubviews:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("splitView:canCollapseSubview:");
   arg2 = caml_wrap_pointer(@selector(splitView:canCollapseSubview:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("splitView:constrainSplitPosition:ofSubviewAt:");
   arg2 = caml_wrap_pointer(@selector(splitView:constrainSplitPosition:ofSubviewAt:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSSplitView");
   arg2 = caml_wrap_id([NSSplitView class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setDelegate:");
   arg2 = caml_wrap_pointer(@selector(setDelegate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("delegate:");
   arg2 = caml_wrap_pointer(@selector(delegate ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("adjustSubviews:");
   arg2 = caml_wrap_pointer(@selector(adjustSubviews ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("dividerThickness:");
   arg2 = caml_wrap_pointer(@selector(dividerThickness ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawDividerInRect:");
   arg2 = caml_wrap_pointer(@selector(drawDividerInRect:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setVertical:");
   arg2 = caml_wrap_pointer(@selector(setVertical:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isVertical:");
   arg2 = caml_wrap_pointer(@selector(isVertical ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setIsPaneSplitter:");
   arg2 = caml_wrap_pointer(@selector(setIsPaneSplitter:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isPaneSplitter:");
   arg2 = caml_wrap_pointer(@selector(isPaneSplitter ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isSubviewCollapsed:");
   arg2 = caml_wrap_pointer(@selector(isSubviewCollapsed:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
