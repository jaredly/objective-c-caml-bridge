#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSNib.h>
value caml_init_NSNib(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSNib");
   arg2 = caml_wrap_id([NSNib class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithContentsOfURL:");
   arg2 = caml_wrap_pointer(@selector(initWithContentsOfURL:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithNibNamed:bundle:");
   arg2 = caml_wrap_pointer(@selector(initWithNibNamed:bundle:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("instantiateNibWithExternalNameTable:");
   arg2 = caml_wrap_pointer(@selector(instantiateNibWithExternalNameTable:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("instantiateNibWithOwner:topLevelObjects:");
   arg2 = caml_wrap_pointer(@selector(instantiateNibWithOwner:topLevelObjects:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
