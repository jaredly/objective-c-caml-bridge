#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSURLAuthenticationChallenge.h>
value caml_init_NSURLAuthenticationChallenge(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSURLAuthenticationChallenge");
   arg2 = caml_wrap_id([NSURLAuthenticationChallenge class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithProtectionSpace:proposedCredential:previousFailureCount:failureResponse:error:sender:");
   arg2 = caml_wrap_pointer(@selector(initWithProtectionSpace:proposedCredential:previousFailureCount:failureResponse:error:sender:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithAuthenticationChallenge:sender:");
   arg2 = caml_wrap_pointer(@selector(initWithAuthenticationChallenge:sender:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("protectionSpace:");
   arg2 = caml_wrap_pointer(@selector(protectionSpace ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("proposedCredential:");
   arg2 = caml_wrap_pointer(@selector(proposedCredential ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("previousFailureCount:");
   arg2 = caml_wrap_pointer(@selector(previousFailureCount ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("failureResponse:");
   arg2 = caml_wrap_pointer(@selector(failureResponse ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("error:");
   arg2 = caml_wrap_pointer(@selector(error ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("sender:");
   arg2 = caml_wrap_pointer(@selector(sender ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
