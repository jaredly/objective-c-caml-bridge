// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSPrintPanel.h>
value caml_init_NSPrintPanel(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSPrintPanel");
   arg2 = caml_wrap_id([NSPrintPanel class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("printPanel:");
   arg2 = caml_wrap_pointer(@selector(printPanel ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("beginSheetWithPrintInfo:modalForWindow:delegate:didEndSelector:contextInfo:");
   arg2 = caml_wrap_pointer(@selector(beginSheetWithPrintInfo:modalForWindow:delegate:didEndSelector:contextInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("runModal:");
   arg2 = caml_wrap_pointer(@selector(runModal ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessoryView:");
   arg2 = caml_wrap_pointer(@selector(accessoryView ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAccessoryView:");
   arg2 = caml_wrap_pointer(@selector(setAccessoryView:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setJobStyleHint:");
   arg2 = caml_wrap_pointer(@selector(setJobStyleHint:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("jobStyleHint:");
   arg2 = caml_wrap_pointer(@selector(jobStyleHint ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("updateFromPrintInfo:");
   arg2 = caml_wrap_pointer(@selector(updateFromPrintInfo ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("finalWritePrintInfo:");
   arg2 = caml_wrap_pointer(@selector(finalWritePrintInfo ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("pickedAllPages:");
   arg2 = caml_wrap_pointer(@selector(pickedAllPages:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("pickedButton:");
   arg2 = caml_wrap_pointer(@selector(pickedButton:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("pickedLayoutList:");
   arg2 = caml_wrap_pointer(@selector(pickedLayoutList:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
