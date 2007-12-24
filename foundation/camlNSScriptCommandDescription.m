// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSScriptCommandDescription.h>
value caml_init_NSScriptCommandDescription(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSScriptCommandDescription");
   arg2 = caml_wrap_id([NSScriptCommandDescription class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithSuiteName:commandName:dictionary:");
   arg2 = caml_wrap_pointer(@selector(initWithSuiteName:commandName:dictionary:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("suiteName:");
   arg2 = caml_wrap_pointer(@selector(suiteName ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("commandName:");
   arg2 = caml_wrap_pointer(@selector(commandName ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("appleEventClassCode:");
   arg2 = caml_wrap_pointer(@selector(appleEventClassCode ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("appleEventCode:");
   arg2 = caml_wrap_pointer(@selector(appleEventCode ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("commandClassName:");
   arg2 = caml_wrap_pointer(@selector(commandClassName ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("returnType:");
   arg2 = caml_wrap_pointer(@selector(returnType ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("appleEventCodeForReturnType:");
   arg2 = caml_wrap_pointer(@selector(appleEventCodeForReturnType ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("argumentNames:");
   arg2 = caml_wrap_pointer(@selector(argumentNames ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("typeForArgumentWithName:");
   arg2 = caml_wrap_pointer(@selector(typeForArgumentWithName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("appleEventCodeForArgumentWithName:");
   arg2 = caml_wrap_pointer(@selector(appleEventCodeForArgumentWithName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isOptionalArgumentWithName:");
   arg2 = caml_wrap_pointer(@selector(isOptionalArgumentWithName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("createCommandInstance:");
   arg2 = caml_wrap_pointer(@selector(createCommandInstance ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("createCommandInstanceWithZone:");
   arg2 = caml_wrap_pointer(@selector(createCommandInstanceWithZone:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
