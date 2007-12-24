// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSError.h>
value caml_init_NSError(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSError");
   arg2 = caml_wrap_id([NSError class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithDomain:code:userInfo:");
   arg2 = caml_wrap_pointer(@selector(initWithDomain:code:userInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("errorWithDomain:code:userInfo:");
   arg2 = caml_wrap_pointer(@selector(errorWithDomain:code:userInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("domain:");
   arg2 = caml_wrap_pointer(@selector(domain ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("code:");
   arg2 = caml_wrap_pointer(@selector(code ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("userInfo:");
   arg2 = caml_wrap_pointer(@selector(userInfo ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("localizedDescription:");
   arg2 = caml_wrap_pointer(@selector(localizedDescription ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("localizedFailureReason:");
   arg2 = caml_wrap_pointer(@selector(localizedFailureReason ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("localizedRecoverySuggestion:");
   arg2 = caml_wrap_pointer(@selector(localizedRecoverySuggestion ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("localizedRecoveryOptions:");
   arg2 = caml_wrap_pointer(@selector(localizedRecoveryOptions ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("recoveryAttempter:");
   arg2 = caml_wrap_pointer(@selector(recoveryAttempter ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("attemptRecoveryFromError:optionIndex:delegate:didRecoverSelector:contextInfo:");
   arg2 = caml_wrap_pointer(@selector(attemptRecoveryFromError:optionIndex:delegate:didRecoverSelector:contextInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("attemptRecoveryFromError:optionIndex:");
   arg2 = caml_wrap_pointer(@selector(attemptRecoveryFromError:optionIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
