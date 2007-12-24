// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSKeyValueObserving.h>
value caml_init_NSKeyValueObserving(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("automaticallyNotifiesObserversForKey:");
   arg2 = caml_wrap_pointer(@selector(automaticallyNotifiesObserversForKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setKeys:triggerChangeNotificationsForDependentKey:");
   arg2 = caml_wrap_pointer(@selector(setKeys:triggerChangeNotificationsForDependentKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setObservationInfo:");
   arg2 = caml_wrap_pointer(@selector(setObservationInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("observationInfo:");
   arg2 = caml_wrap_pointer(@selector(observationInfo ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("willChangeValueForKey:");
   arg2 = caml_wrap_pointer(@selector(willChangeValueForKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("didChangeValueForKey:");
   arg2 = caml_wrap_pointer(@selector(didChangeValueForKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("willChange:valuesAtIndexes:forKey:");
   arg2 = caml_wrap_pointer(@selector(willChange:valuesAtIndexes:forKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("didChange:valuesAtIndexes:forKey:");
   arg2 = caml_wrap_pointer(@selector(didChange:valuesAtIndexes:forKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("willChangeValueForKey:withSetMutation:usingObjects:");
   arg2 = caml_wrap_pointer(@selector(willChangeValueForKey:withSetMutation:usingObjects:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("didChangeValueForKey:withSetMutation:usingObjects:");
   arg2 = caml_wrap_pointer(@selector(didChangeValueForKey:withSetMutation:usingObjects:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("addObserver:forKeyPath:options:context:");
   arg2 = caml_wrap_pointer(@selector(addObserver:forKeyPath:options:context:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeObserver:forKeyPath:");
   arg2 = caml_wrap_pointer(@selector(removeObserver:forKeyPath:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("observeValueForKeyPath:ofObject:change:context:");
   arg2 = caml_wrap_pointer(@selector(observeValueForKeyPath:ofObject:change:context:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSArray");
   arg2 = caml_wrap_id([NSArray class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("addObserver:toObjectsAtIndexes:forKeyPath:options:context:");
   arg2 = caml_wrap_pointer(@selector(addObserver:toObjectsAtIndexes:forKeyPath:options:context:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeObserver:fromObjectsAtIndexes:forKeyPath:");
   arg2 = caml_wrap_pointer(@selector(removeObserver:fromObjectsAtIndexes:forKeyPath:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("addObserver:forKeyPath:options:context:");
   arg2 = caml_wrap_pointer(@selector(addObserver:forKeyPath:options:context:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeObserver:forKeyPath:");
   arg2 = caml_wrap_pointer(@selector(removeObserver:forKeyPath:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSSet");
   arg2 = caml_wrap_id([NSSet class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("addObserver:forKeyPath:options:context:");
   arg2 = caml_wrap_pointer(@selector(addObserver:forKeyPath:options:context:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeObserver:forKeyPath:");
   arg2 = caml_wrap_pointer(@selector(removeObserver:forKeyPath:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
