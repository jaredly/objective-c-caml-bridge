// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSURLHandle.h>
value caml_init_NSURLHandle(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSURLHandle");
   arg2 = caml_wrap_id([NSURLHandle class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("registerURLHandleClass:");
   arg2 = caml_wrap_pointer(@selector(registerURLHandleClass:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_URLHandleClassForURL:");
   arg2 = caml_wrap_pointer(@selector(l_URLHandleClassForURL:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("status:");
   arg2 = caml_wrap_pointer(@selector(status ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("failureReason:");
   arg2 = caml_wrap_pointer(@selector(failureReason ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("addClient:");
   arg2 = caml_wrap_pointer(@selector(addClient:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeClient:");
   arg2 = caml_wrap_pointer(@selector(removeClient:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("loadInBackground:");
   arg2 = caml_wrap_pointer(@selector(loadInBackground ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cancelLoadInBackground:");
   arg2 = caml_wrap_pointer(@selector(cancelLoadInBackground ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("resourceData:");
   arg2 = caml_wrap_pointer(@selector(resourceData ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("availableResourceData:");
   arg2 = caml_wrap_pointer(@selector(availableResourceData ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("expectedResourceDataSize:");
   arg2 = caml_wrap_pointer(@selector(expectedResourceDataSize ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("flushCachedData:");
   arg2 = caml_wrap_pointer(@selector(flushCachedData ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("backgroundLoadDidFailWithReason:");
   arg2 = caml_wrap_pointer(@selector(backgroundLoadDidFailWithReason:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("didLoadBytes:loadComplete:");
   arg2 = caml_wrap_pointer(@selector(didLoadBytes:loadComplete:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("canInitWithURL:");
   arg2 = caml_wrap_pointer(@selector(canInitWithURL:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cachedHandleForURL:");
   arg2 = caml_wrap_pointer(@selector(cachedHandleForURL:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithURL:cached:");
   arg2 = caml_wrap_pointer(@selector(initWithURL:cached:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("propertyForKey:");
   arg2 = caml_wrap_pointer(@selector(propertyForKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("propertyForKeyIfAvailable:");
   arg2 = caml_wrap_pointer(@selector(propertyForKeyIfAvailable:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("writeProperty:forKey:");
   arg2 = caml_wrap_pointer(@selector(writeProperty:forKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("writeData:");
   arg2 = caml_wrap_pointer(@selector(writeData:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("loadInForeground:");
   arg2 = caml_wrap_pointer(@selector(loadInForeground ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("beginLoadInBackground:");
   arg2 = caml_wrap_pointer(@selector(beginLoadInBackground ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("endLoadInBackground:");
   arg2 = caml_wrap_pointer(@selector(endLoadInBackground ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
