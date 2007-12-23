#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSPanel.h>
value caml_init_NSPanel(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSPanel");
   arg2 = caml_wrap_id([NSPanel class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("isFloatingPanel:");
   arg2 = caml_wrap_pointer(@selector(isFloatingPanel ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setFloatingPanel:");
   arg2 = caml_wrap_pointer(@selector(setFloatingPanel:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("becomesKeyOnlyIfNeeded:");
   arg2 = caml_wrap_pointer(@selector(becomesKeyOnlyIfNeeded ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setBecomesKeyOnlyIfNeeded:");
   arg2 = caml_wrap_pointer(@selector(setBecomesKeyOnlyIfNeeded:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("worksWhenModal:");
   arg2 = caml_wrap_pointer(@selector(worksWhenModal ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setWorksWhenModal:");
   arg2 = caml_wrap_pointer(@selector(setWorksWhenModal:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
