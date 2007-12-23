#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSSearchField.h>
value caml_init_NSSearchField(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSSearchField");
   arg2 = caml_wrap_id([NSSearchField class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setRecentSearches:");
   arg2 = caml_wrap_pointer(@selector(setRecentSearches:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("recentSearches:");
   arg2 = caml_wrap_pointer(@selector(recentSearches ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setRecentsAutosaveName:");
   arg2 = caml_wrap_pointer(@selector(setRecentsAutosaveName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("recentsAutosaveName:");
   arg2 = caml_wrap_pointer(@selector(recentsAutosaveName ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
