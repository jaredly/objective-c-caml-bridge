// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSDocumentScripting.h>
value caml_init_NSDocumentScripting(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSDocument");
   arg2 = caml_wrap_id([NSDocument class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("lastComponentOfFileName:");
   arg2 = caml_wrap_pointer(@selector(lastComponentOfFileName ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setLastComponentOfFileName:");
   arg2 = caml_wrap_pointer(@selector(setLastComponentOfFileName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("handleSaveScriptCommand:");
   arg2 = caml_wrap_pointer(@selector(handleSaveScriptCommand:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("handleCloseScriptCommand:");
   arg2 = caml_wrap_pointer(@selector(handleCloseScriptCommand:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("handlePrintScriptCommand:");
   arg2 = caml_wrap_pointer(@selector(handlePrintScriptCommand:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("objectSpecifier:");
   arg2 = caml_wrap_pointer(@selector(objectSpecifier ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
