#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSApplicationScripting.h>
value caml_init_NSApplicationScripting(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSApplication");
   arg2 = caml_wrap_id([NSApplication class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("orderedDocuments:");
   arg2 = caml_wrap_pointer(@selector(orderedDocuments ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("orderedWindows:");
   arg2 = caml_wrap_pointer(@selector(orderedWindows ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("application:delegateHandlesKey:");
   arg2 = caml_wrap_pointer(@selector(application:delegateHandlesKey:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
