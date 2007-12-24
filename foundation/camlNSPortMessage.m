// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSPortMessage.h>
value caml_init_NSPortMessage(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSPortMessage");
   arg2 = caml_wrap_id([NSPortMessage class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithSendPort:receivePort:components:");
   arg2 = caml_wrap_pointer(@selector(initWithSendPort:receivePort:components:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("components:");
   arg2 = caml_wrap_pointer(@selector(components ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("receivePort:");
   arg2 = caml_wrap_pointer(@selector(receivePort ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("sendPort:");
   arg2 = caml_wrap_pointer(@selector(sendPort ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("sendBeforeDate:");
   arg2 = caml_wrap_pointer(@selector(sendBeforeDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("msgid:");
   arg2 = caml_wrap_pointer(@selector(msgid ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setMsgid:");
   arg2 = caml_wrap_pointer(@selector(setMsgid:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
