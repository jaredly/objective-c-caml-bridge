// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSTextContainer.h>
value caml_init_NSTextContainer(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSTextContainer");
   arg2 = caml_wrap_id([NSTextContainer class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithContainerSize:");
   arg2 = caml_wrap_pointer(@selector(initWithContainerSize:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("layoutManager:");
   arg2 = caml_wrap_pointer(@selector(layoutManager ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setLayoutManager:");
   arg2 = caml_wrap_pointer(@selector(setLayoutManager:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("replaceLayoutManager:");
   arg2 = caml_wrap_pointer(@selector(replaceLayoutManager:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("textView:");
   arg2 = caml_wrap_pointer(@selector(textView ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTextView:");
   arg2 = caml_wrap_pointer(@selector(setTextView:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setWidthTracksTextView:");
   arg2 = caml_wrap_pointer(@selector(setWidthTracksTextView:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("widthTracksTextView:");
   arg2 = caml_wrap_pointer(@selector(widthTracksTextView ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setHeightTracksTextView:");
   arg2 = caml_wrap_pointer(@selector(setHeightTracksTextView:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("heightTracksTextView:");
   arg2 = caml_wrap_pointer(@selector(heightTracksTextView ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setContainerSize:");
   arg2 = caml_wrap_pointer(@selector(setContainerSize:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("containerSize:");
   arg2 = caml_wrap_pointer(@selector(containerSize ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setLineFragmentPadding:");
   arg2 = caml_wrap_pointer(@selector(setLineFragmentPadding:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("lineFragmentPadding:");
   arg2 = caml_wrap_pointer(@selector(lineFragmentPadding ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("lineFragmentRectForProposedRect:sweepDirection:movementDirection:remainingRect:");
   arg2 = caml_wrap_pointer(@selector(lineFragmentRectForProposedRect:sweepDirection:movementDirection:remainingRect:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isSimpleRectangularTextContainer:");
   arg2 = caml_wrap_pointer(@selector(isSimpleRectangularTextContainer ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("containsPoint:");
   arg2 = caml_wrap_pointer(@selector(containsPoint:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
