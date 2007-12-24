// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSBrowserCell.h>
value caml_init_NSBrowserCell(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSBrowserCell");
   arg2 = caml_wrap_id([NSBrowserCell class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("branchImage:");
   arg2 = caml_wrap_pointer(@selector(branchImage ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("highlightedBranchImage:");
   arg2 = caml_wrap_pointer(@selector(highlightedBranchImage ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("highlightColorInView:");
   arg2 = caml_wrap_pointer(@selector(highlightColorInView:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isLeaf:");
   arg2 = caml_wrap_pointer(@selector(isLeaf ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setLeaf:");
   arg2 = caml_wrap_pointer(@selector(setLeaf:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isLoaded:");
   arg2 = caml_wrap_pointer(@selector(isLoaded ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setLoaded:");
   arg2 = caml_wrap_pointer(@selector(setLoaded:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("reset:");
   arg2 = caml_wrap_pointer(@selector(reset ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("set:");
   arg2 = caml_wrap_pointer(@selector(set ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setImage:");
   arg2 = caml_wrap_pointer(@selector(setImage:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("image:");
   arg2 = caml_wrap_pointer(@selector(image ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAlternateImage:");
   arg2 = caml_wrap_pointer(@selector(setAlternateImage:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("alternateImage:");
   arg2 = caml_wrap_pointer(@selector(alternateImage ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
