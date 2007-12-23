#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSActionCell.h>
value caml_init_NSActionCell(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSActionCell");
   arg2 = caml_wrap_id([NSActionCell class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("controlView:");
   arg2 = caml_wrap_pointer(@selector(controlView ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setControlView:");
   arg2 = caml_wrap_pointer(@selector(setControlView:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setFont:");
   arg2 = caml_wrap_pointer(@selector(setFont:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAlignment:");
   arg2 = caml_wrap_pointer(@selector(setAlignment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setBordered:");
   arg2 = caml_wrap_pointer(@selector(setBordered:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setBezeled:");
   arg2 = caml_wrap_pointer(@selector(setBezeled:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setEnabled:");
   arg2 = caml_wrap_pointer(@selector(setEnabled:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setFloatingPointFormat:left:right:");
   arg2 = caml_wrap_pointer(@selector(setFloatingPointFormat:left:right:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setImage:");
   arg2 = caml_wrap_pointer(@selector(setImage:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("target:");
   arg2 = caml_wrap_pointer(@selector(target ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTarget:");
   arg2 = caml_wrap_pointer(@selector(setTarget:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("action:");
   arg2 = caml_wrap_pointer(@selector(action ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAction:");
   arg2 = caml_wrap_pointer(@selector(setAction:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tag:");
   arg2 = caml_wrap_pointer(@selector(tag ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTag:");
   arg2 = caml_wrap_pointer(@selector(setTag:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stringValue:");
   arg2 = caml_wrap_pointer(@selector(stringValue ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("intValue:");
   arg2 = caml_wrap_pointer(@selector(intValue ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("floatValue:");
   arg2 = caml_wrap_pointer(@selector(floatValue ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("doubleValue:");
   arg2 = caml_wrap_pointer(@selector(doubleValue ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setObjectValue:");
   arg2 = caml_wrap_pointer(@selector(setObjectValue:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
