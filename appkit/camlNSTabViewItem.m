#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSTabViewItem.h>
value caml_init_NSTabViewItem(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSTabViewItem");
   arg2 = caml_wrap_id([NSTabViewItem class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithIdentifier:");
   arg2 = caml_wrap_pointer(@selector(initWithIdentifier:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("identifier:");
   arg2 = caml_wrap_pointer(@selector(identifier ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("view:");
   arg2 = caml_wrap_pointer(@selector(view ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initialFirstResponder:");
   arg2 = caml_wrap_pointer(@selector(initialFirstResponder ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("label:");
   arg2 = caml_wrap_pointer(@selector(label ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("color:");
   arg2 = caml_wrap_pointer(@selector(color ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tabState:");
   arg2 = caml_wrap_pointer(@selector(tabState ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tabView:");
   arg2 = caml_wrap_pointer(@selector(tabView ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setIdentifier:");
   arg2 = caml_wrap_pointer(@selector(setIdentifier:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setLabel:");
   arg2 = caml_wrap_pointer(@selector(setLabel:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setColor:");
   arg2 = caml_wrap_pointer(@selector(setColor:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setView:");
   arg2 = caml_wrap_pointer(@selector(setView:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setInitialFirstResponder:");
   arg2 = caml_wrap_pointer(@selector(setInitialFirstResponder:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawLabel:inRect:");
   arg2 = caml_wrap_pointer(@selector(drawLabel:inRect:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("sizeOfLabel:");
   arg2 = caml_wrap_pointer(@selector(sizeOfLabel:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
