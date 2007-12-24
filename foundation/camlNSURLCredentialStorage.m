// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSURLCredentialStorage.h>
value caml_init_NSURLCredentialStorage(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSURLCredentialStorage");
   arg2 = caml_wrap_id([NSURLCredentialStorage class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedCredentialStorage:");
   arg2 = caml_wrap_pointer(@selector(sharedCredentialStorage ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("credentialsForProtectionSpace:");
   arg2 = caml_wrap_pointer(@selector(credentialsForProtectionSpace:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("allCredentials:");
   arg2 = caml_wrap_pointer(@selector(allCredentials ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCredential:forProtectionSpace:");
   arg2 = caml_wrap_pointer(@selector(setCredential:forProtectionSpace:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeCredential:forProtectionSpace:");
   arg2 = caml_wrap_pointer(@selector(removeCredential:forProtectionSpace:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("defaultCredentialForProtectionSpace:");
   arg2 = caml_wrap_pointer(@selector(defaultCredentialForProtectionSpace:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDefaultCredential:forProtectionSpace:");
   arg2 = caml_wrap_pointer(@selector(setDefaultCredential:forProtectionSpace:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
