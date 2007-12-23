#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSSearchFieldCell.h>
value caml_init_NSSearchFieldCell(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSSearchFieldCell");
   arg2 = caml_wrap_id([NSSearchFieldCell class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("searchButtonCell:");
   arg2 = caml_wrap_pointer(@selector(searchButtonCell ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setSearchButtonCell:");
   arg2 = caml_wrap_pointer(@selector(setSearchButtonCell:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cancelButtonCell:");
   arg2 = caml_wrap_pointer(@selector(cancelButtonCell ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCancelButtonCell:");
   arg2 = caml_wrap_pointer(@selector(setCancelButtonCell:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("resetSearchButtonCell:");
   arg2 = caml_wrap_pointer(@selector(resetSearchButtonCell ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("resetCancelButtonCell:");
   arg2 = caml_wrap_pointer(@selector(resetCancelButtonCell ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("searchTextRectForBounds:");
   arg2 = caml_wrap_pointer(@selector(searchTextRectForBounds:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("searchButtonRectForBounds:");
   arg2 = caml_wrap_pointer(@selector(searchButtonRectForBounds:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cancelButtonRectForBounds:");
   arg2 = caml_wrap_pointer(@selector(cancelButtonRectForBounds:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setSearchMenuTemplate:");
   arg2 = caml_wrap_pointer(@selector(setSearchMenuTemplate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("searchMenuTemplate:");
   arg2 = caml_wrap_pointer(@selector(searchMenuTemplate ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setSendsWholeSearchString:");
   arg2 = caml_wrap_pointer(@selector(setSendsWholeSearchString:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("sendsWholeSearchString:");
   arg2 = caml_wrap_pointer(@selector(sendsWholeSearchString ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setMaximumRecents:");
   arg2 = caml_wrap_pointer(@selector(setMaximumRecents:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("maximumRecents:");
   arg2 = caml_wrap_pointer(@selector(maximumRecents ));
   caml_callback2(*register_selector, arg1, arg2);
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
   arg1 = caml_copy_string("sendsSearchStringImmediately:");
   arg2 = caml_wrap_pointer(@selector(sendsSearchStringImmediately ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setSendsSearchStringImmediately:");
   arg2 = caml_wrap_pointer(@selector(setSendsSearchStringImmediately:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
