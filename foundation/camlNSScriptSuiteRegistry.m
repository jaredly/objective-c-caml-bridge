#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSScriptSuiteRegistry.h>
value caml_init_NSScriptSuiteRegistry(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSScriptSuiteRegistry");
   arg2 = caml_wrap_id([NSScriptSuiteRegistry class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedScriptSuiteRegistry:");
   arg2 = caml_wrap_pointer(@selector(sharedScriptSuiteRegistry ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setSharedScriptSuiteRegistry:");
   arg2 = caml_wrap_pointer(@selector(setSharedScriptSuiteRegistry:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("loadSuitesFromBundle:");
   arg2 = caml_wrap_pointer(@selector(loadSuitesFromBundle:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("loadSuiteWithDictionary:fromBundle:");
   arg2 = caml_wrap_pointer(@selector(loadSuiteWithDictionary:fromBundle:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("registerClassDescription:");
   arg2 = caml_wrap_pointer(@selector(registerClassDescription:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("registerCommandDescription:");
   arg2 = caml_wrap_pointer(@selector(registerCommandDescription:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("suiteNames:");
   arg2 = caml_wrap_pointer(@selector(suiteNames ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("appleEventCodeForSuite:");
   arg2 = caml_wrap_pointer(@selector(appleEventCodeForSuite:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("bundleForSuite:");
   arg2 = caml_wrap_pointer(@selector(bundleForSuite:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("classDescriptionsInSuite:");
   arg2 = caml_wrap_pointer(@selector(classDescriptionsInSuite:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("commandDescriptionsInSuite:");
   arg2 = caml_wrap_pointer(@selector(commandDescriptionsInSuite:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("suiteForAppleEventCode:");
   arg2 = caml_wrap_pointer(@selector(suiteForAppleEventCode:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("classDescriptionWithAppleEventCode:");
   arg2 = caml_wrap_pointer(@selector(classDescriptionWithAppleEventCode:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("commandDescriptionWithAppleEventClass:andAppleEventCode:");
   arg2 = caml_wrap_pointer(@selector(commandDescriptionWithAppleEventClass:andAppleEventCode:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("aeteResource:");
   arg2 = caml_wrap_pointer(@selector(aeteResource:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
