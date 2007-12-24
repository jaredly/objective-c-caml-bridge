// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSStatusBar.h>
value caml_init_NSStatusBar(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSStatusBar");
   arg2 = caml_wrap_id([NSStatusBar class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("systemStatusBar:");
   arg2 = caml_wrap_pointer(@selector(systemStatusBar ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("statusItemWithLength:");
   arg2 = caml_wrap_pointer(@selector(statusItemWithLength:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeStatusItem:");
   arg2 = caml_wrap_pointer(@selector(removeStatusItem:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isVertical:");
   arg2 = caml_wrap_pointer(@selector(isVertical ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("thickness:");
   arg2 = caml_wrap_pointer(@selector(thickness ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
