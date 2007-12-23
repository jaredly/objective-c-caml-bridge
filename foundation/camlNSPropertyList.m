#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSPropertyList.h>
value caml_init_NSPropertyList(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSPropertyListSerialization");
   arg2 = caml_wrap_id([NSPropertyListSerialization class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("propertyList:isValidForFormat:");
   arg2 = caml_wrap_pointer(@selector(propertyList:isValidForFormat:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("dataFromPropertyList:format:errorDescription:");
   arg2 = caml_wrap_pointer(@selector(dataFromPropertyList:format:errorDescription:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("propertyListFromData:mutabilityOption:format:errorDescription:");
   arg2 = caml_wrap_pointer(@selector(propertyListFromData:mutabilityOption:format:errorDescription:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
