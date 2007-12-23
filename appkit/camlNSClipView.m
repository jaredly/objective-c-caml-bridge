#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSClipView.h>
value caml_init_NSClipView(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSView");
   arg2 = caml_wrap_id([NSView class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("reflectScrolledClipView:");
   arg2 = caml_wrap_pointer(@selector(reflectScrolledClipView:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("scrollClipView:toPoint:");
   arg2 = caml_wrap_pointer(@selector(scrollClipView:toPoint:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSClipView");
   arg2 = caml_wrap_id([NSClipView class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setBackgroundColor:");
   arg2 = caml_wrap_pointer(@selector(setBackgroundColor:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("backgroundColor:");
   arg2 = caml_wrap_pointer(@selector(backgroundColor ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDrawsBackground:");
   arg2 = caml_wrap_pointer(@selector(setDrawsBackground:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawsBackground:");
   arg2 = caml_wrap_pointer(@selector(drawsBackground ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDocumentView:");
   arg2 = caml_wrap_pointer(@selector(setDocumentView:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("documentView:");
   arg2 = caml_wrap_pointer(@selector(documentView ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("documentRect:");
   arg2 = caml_wrap_pointer(@selector(documentRect ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDocumentCursor:");
   arg2 = caml_wrap_pointer(@selector(setDocumentCursor:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("documentCursor:");
   arg2 = caml_wrap_pointer(@selector(documentCursor ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("documentVisibleRect:");
   arg2 = caml_wrap_pointer(@selector(documentVisibleRect ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("viewFrameChanged:");
   arg2 = caml_wrap_pointer(@selector(viewFrameChanged:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("viewBoundsChanged:");
   arg2 = caml_wrap_pointer(@selector(viewBoundsChanged:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCopiesOnScroll:");
   arg2 = caml_wrap_pointer(@selector(setCopiesOnScroll:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("copiesOnScroll:");
   arg2 = caml_wrap_pointer(@selector(copiesOnScroll ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("autoscroll:");
   arg2 = caml_wrap_pointer(@selector(autoscroll:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("constrainScrollPoint:");
   arg2 = caml_wrap_pointer(@selector(constrainScrollPoint:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("scrollToPoint:");
   arg2 = caml_wrap_pointer(@selector(scrollToPoint:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
