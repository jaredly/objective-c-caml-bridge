#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSForm.h>
value caml_init_NSForm(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSForm");
   arg2 = caml_wrap_id([NSForm class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("indexOfSelectedItem:");
   arg2 = caml_wrap_pointer(@selector(indexOfSelectedItem ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setEntryWidth:");
   arg2 = caml_wrap_pointer(@selector(setEntryWidth:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setInterlineSpacing:");
   arg2 = caml_wrap_pointer(@selector(setInterlineSpacing:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setBordered:");
   arg2 = caml_wrap_pointer(@selector(setBordered:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setBezeled:");
   arg2 = caml_wrap_pointer(@selector(setBezeled:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTitleAlignment:");
   arg2 = caml_wrap_pointer(@selector(setTitleAlignment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTextAlignment:");
   arg2 = caml_wrap_pointer(@selector(setTextAlignment:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTitleFont:");
   arg2 = caml_wrap_pointer(@selector(setTitleFont:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTextFont:");
   arg2 = caml_wrap_pointer(@selector(setTextFont:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cellAtIndex:");
   arg2 = caml_wrap_pointer(@selector(cellAtIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawCellAtIndex:");
   arg2 = caml_wrap_pointer(@selector(drawCellAtIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("addEntry:");
   arg2 = caml_wrap_pointer(@selector(addEntry:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("insertEntry:atIndex:");
   arg2 = caml_wrap_pointer(@selector(insertEntry:atIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeEntryAtIndex:");
   arg2 = caml_wrap_pointer(@selector(removeEntryAtIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("indexOfCellWithTag:");
   arg2 = caml_wrap_pointer(@selector(indexOfCellWithTag:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("selectTextAtIndex:");
   arg2 = caml_wrap_pointer(@selector(selectTextAtIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setFrameSize:");
   arg2 = caml_wrap_pointer(@selector(setFrameSize:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTitleBaseWritingDirection:");
   arg2 = caml_wrap_pointer(@selector(setTitleBaseWritingDirection:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTextBaseWritingDirection:");
   arg2 = caml_wrap_pointer(@selector(setTextBaseWritingDirection:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
