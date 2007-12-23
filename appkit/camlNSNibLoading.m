#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSNibLoading.h>
value caml_init_NSNibLoading(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("awakeFromNib:");
   arg2 = caml_wrap_pointer(@selector(awakeFromNib ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSBundle");
   arg2 = caml_wrap_id([NSBundle class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("loadNibFile:externalNameTable:withZone:");
   arg2 = caml_wrap_pointer(@selector(loadNibFile:externalNameTable:withZone:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("loadNibNamed:owner:");
   arg2 = caml_wrap_pointer(@selector(loadNibNamed:owner:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("loadNibFile:externalNameTable:withZone:");
   arg2 = caml_wrap_pointer(@selector(loadNibFile:externalNameTable:withZone:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
