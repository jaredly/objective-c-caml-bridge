// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSMovie.h>
value caml_init_NSMovie(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSMovie");
   arg2 = caml_wrap_id([NSMovie class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithMovie:");
   arg2 = caml_wrap_pointer(@selector(initWithMovie:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithURL:byReference:");
   arg2 = caml_wrap_pointer(@selector(initWithURL:byReference:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithPasteboard:");
   arg2 = caml_wrap_pointer(@selector(initWithPasteboard:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_QTMovie:");
   arg2 = caml_wrap_pointer(@selector(l_QTMovie ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_URL:");
   arg2 = caml_wrap_pointer(@selector(l_URL ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("movieUnfilteredFileTypes:");
   arg2 = caml_wrap_pointer(@selector(movieUnfilteredFileTypes ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("movieUnfilteredPasteboardTypes:");
   arg2 = caml_wrap_pointer(@selector(movieUnfilteredPasteboardTypes ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("canInitWithPasteboard:");
   arg2 = caml_wrap_pointer(@selector(canInitWithPasteboard:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
