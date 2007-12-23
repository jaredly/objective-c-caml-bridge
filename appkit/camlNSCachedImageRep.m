#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSCachedImageRep.h>
value caml_init_NSCachedImageRep(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSCachedImageRep");
   arg2 = caml_wrap_id([NSCachedImageRep class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithWindow:rect:");
   arg2 = caml_wrap_pointer(@selector(initWithWindow:rect:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithSize:depth:separate:alpha:");
   arg2 = caml_wrap_pointer(@selector(initWithSize:depth:separate:alpha:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("window:");
   arg2 = caml_wrap_pointer(@selector(window ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("rect:");
   arg2 = caml_wrap_pointer(@selector(rect ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
