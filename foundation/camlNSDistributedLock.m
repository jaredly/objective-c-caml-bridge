#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSDistributedLock.h>
value caml_init_NSDistributedLock(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSDistributedLock");
   arg2 = caml_wrap_id([NSDistributedLock class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("lockWithPath:");
   arg2 = caml_wrap_pointer(@selector(lockWithPath:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithPath:");
   arg2 = caml_wrap_pointer(@selector(initWithPath:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tryLock:");
   arg2 = caml_wrap_pointer(@selector(tryLock ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("unlock:");
   arg2 = caml_wrap_pointer(@selector(unlock ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("breakLock:");
   arg2 = caml_wrap_pointer(@selector(breakLock ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("lockDate:");
   arg2 = caml_wrap_pointer(@selector(lockDate ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
