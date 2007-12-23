#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSProcessInfo.h>
value caml_init_NSProcessInfo(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSProcessInfo");
   arg2 = caml_wrap_id([NSProcessInfo class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("processInfo:");
   arg2 = caml_wrap_pointer(@selector(processInfo ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("environment:");
   arg2 = caml_wrap_pointer(@selector(environment ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("arguments:");
   arg2 = caml_wrap_pointer(@selector(arguments ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("hostName:");
   arg2 = caml_wrap_pointer(@selector(hostName ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("processName:");
   arg2 = caml_wrap_pointer(@selector(processName ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("processIdentifier:");
   arg2 = caml_wrap_pointer(@selector(processIdentifier ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setProcessName:");
   arg2 = caml_wrap_pointer(@selector(setProcessName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("globallyUniqueString:");
   arg2 = caml_wrap_pointer(@selector(globallyUniqueString ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("operatingSystem:");
   arg2 = caml_wrap_pointer(@selector(operatingSystem ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("operatingSystemName:");
   arg2 = caml_wrap_pointer(@selector(operatingSystemName ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("operatingSystemVersionString:");
   arg2 = caml_wrap_pointer(@selector(operatingSystemVersionString ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
