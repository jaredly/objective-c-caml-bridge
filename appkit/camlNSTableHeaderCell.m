#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSTableHeaderCell.h>
value caml_init_NSTableHeaderCell(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSTableHeaderCell");
   arg2 = caml_wrap_id([NSTableHeaderCell class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("drawSortIndicatorWithFrame:inView:ascending:priority:");
   arg2 = caml_wrap_pointer(@selector(drawSortIndicatorWithFrame:inView:ascending:priority:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("sortIndicatorRectForBounds:");
   arg2 = caml_wrap_pointer(@selector(sortIndicatorRectForBounds:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
