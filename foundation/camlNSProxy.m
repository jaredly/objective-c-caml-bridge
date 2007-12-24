// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSProxy.h>
value caml_init_NSProxy(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSProxy");
   arg2 = caml_wrap_id([NSProxy class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("alloc:");
   arg2 = caml_wrap_pointer(@selector(alloc ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("allocWithZone:");
   arg2 = caml_wrap_pointer(@selector(allocWithZone:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("class:");
   arg2 = caml_wrap_pointer(@selector(class ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("forwardInvocation:");
   arg2 = caml_wrap_pointer(@selector(forwardInvocation:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("methodSignatureForSelector:");
   arg2 = caml_wrap_pointer(@selector(methodSignatureForSelector:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("dealloc:");
   arg2 = caml_wrap_pointer(@selector(dealloc ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("description:");
   arg2 = caml_wrap_pointer(@selector(description ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("respondsToSelector:");
   arg2 = caml_wrap_pointer(@selector(respondsToSelector:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
