// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSTableHeaderView.h>
value caml_init_NSTableHeaderView(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSTableHeaderView");
   arg2 = caml_wrap_id([NSTableHeaderView class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setTableView:");
   arg2 = caml_wrap_pointer(@selector(setTableView:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tableView:");
   arg2 = caml_wrap_pointer(@selector(tableView ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("draggedColumn:");
   arg2 = caml_wrap_pointer(@selector(draggedColumn ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("draggedDistance:");
   arg2 = caml_wrap_pointer(@selector(draggedDistance ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("resizedColumn:");
   arg2 = caml_wrap_pointer(@selector(resizedColumn ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("headerRectOfColumn:");
   arg2 = caml_wrap_pointer(@selector(headerRectOfColumn:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("columnAtPoint:");
   arg2 = caml_wrap_pointer(@selector(columnAtPoint:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
