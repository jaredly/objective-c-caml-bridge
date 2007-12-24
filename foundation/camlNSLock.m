// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSLock.h>
value caml_init_NSLock(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSLock");
   arg2 = caml_wrap_id([NSLock class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("tryLock:");
   arg2 = caml_wrap_pointer(@selector(tryLock ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("lockBeforeDate:");
   arg2 = caml_wrap_pointer(@selector(lockBeforeDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSConditionLock");
   arg2 = caml_wrap_id([NSConditionLock class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithCondition:");
   arg2 = caml_wrap_pointer(@selector(initWithCondition:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("condition:");
   arg2 = caml_wrap_pointer(@selector(condition ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("lockWhenCondition:");
   arg2 = caml_wrap_pointer(@selector(lockWhenCondition:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tryLock:");
   arg2 = caml_wrap_pointer(@selector(tryLock ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tryLockWhenCondition:");
   arg2 = caml_wrap_pointer(@selector(tryLockWhenCondition:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("unlockWithCondition:");
   arg2 = caml_wrap_pointer(@selector(unlockWithCondition:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("lockBeforeDate:");
   arg2 = caml_wrap_pointer(@selector(lockBeforeDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("lockWhenCondition:beforeDate:");
   arg2 = caml_wrap_pointer(@selector(lockWhenCondition:beforeDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSRecursiveLock");
   arg2 = caml_wrap_id([NSRecursiveLock class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("tryLock:");
   arg2 = caml_wrap_pointer(@selector(tryLock ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("lockBeforeDate:");
   arg2 = caml_wrap_pointer(@selector(lockBeforeDate:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
