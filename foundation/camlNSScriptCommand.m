// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSScriptCommand.h>
value caml_init_NSScriptCommand(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSScriptCommand");
   arg2 = caml_wrap_id([NSScriptCommand class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithCommandDescription:");
   arg2 = caml_wrap_pointer(@selector(initWithCommandDescription:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("commandDescription:");
   arg2 = caml_wrap_pointer(@selector(commandDescription ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDirectParameter:");
   arg2 = caml_wrap_pointer(@selector(setDirectParameter:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("directParameter:");
   arg2 = caml_wrap_pointer(@selector(directParameter ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setReceiversSpecifier:");
   arg2 = caml_wrap_pointer(@selector(setReceiversSpecifier:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("receiversSpecifier:");
   arg2 = caml_wrap_pointer(@selector(receiversSpecifier ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("evaluatedReceivers:");
   arg2 = caml_wrap_pointer(@selector(evaluatedReceivers ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setArguments:");
   arg2 = caml_wrap_pointer(@selector(setArguments:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("arguments:");
   arg2 = caml_wrap_pointer(@selector(arguments ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("evaluatedArguments:");
   arg2 = caml_wrap_pointer(@selector(evaluatedArguments ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isWellFormed:");
   arg2 = caml_wrap_pointer(@selector(isWellFormed ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("performDefaultImplementation:");
   arg2 = caml_wrap_pointer(@selector(performDefaultImplementation ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("executeCommand:");
   arg2 = caml_wrap_pointer(@selector(executeCommand ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setScriptErrorNumber:");
   arg2 = caml_wrap_pointer(@selector(setScriptErrorNumber:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("scriptErrorNumber:");
   arg2 = caml_wrap_pointer(@selector(scriptErrorNumber ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setScriptErrorString:");
   arg2 = caml_wrap_pointer(@selector(setScriptErrorString:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("scriptErrorString:");
   arg2 = caml_wrap_pointer(@selector(scriptErrorString ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("currentCommand:");
   arg2 = caml_wrap_pointer(@selector(currentCommand ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("appleEvent:");
   arg2 = caml_wrap_pointer(@selector(appleEvent ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("suspendExecution:");
   arg2 = caml_wrap_pointer(@selector(suspendExecution ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("resumeExecutionWithResult:");
   arg2 = caml_wrap_pointer(@selector(resumeExecutionWithResult:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
