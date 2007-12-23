#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSScriptExecutionContext.h>
value caml_init_NSScriptExecutionContext(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSScriptExecutionContext");
   arg2 = caml_wrap_id([NSScriptExecutionContext class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedScriptExecutionContext:");
   arg2 = caml_wrap_pointer(@selector(sharedScriptExecutionContext ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("topLevelObject:");
   arg2 = caml_wrap_pointer(@selector(topLevelObject ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTopLevelObject:");
   arg2 = caml_wrap_pointer(@selector(setTopLevelObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("objectBeingTested:");
   arg2 = caml_wrap_pointer(@selector(objectBeingTested ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setObjectBeingTested:");
   arg2 = caml_wrap_pointer(@selector(setObjectBeingTested:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("rangeContainerObject:");
   arg2 = caml_wrap_pointer(@selector(rangeContainerObject ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setRangeContainerObject:");
   arg2 = caml_wrap_pointer(@selector(setRangeContainerObject:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
