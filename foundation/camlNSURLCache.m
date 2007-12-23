#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSURLCache.h>
value caml_init_NSURLCache(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSCachedURLResponse");
   arg2 = caml_wrap_id([NSCachedURLResponse class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithResponse:data:");
   arg2 = caml_wrap_pointer(@selector(initWithResponse:data:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithResponse:data:userInfo:storagePolicy:");
   arg2 = caml_wrap_pointer(@selector(initWithResponse:data:userInfo:storagePolicy:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("response:");
   arg2 = caml_wrap_pointer(@selector(response ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("data:");
   arg2 = caml_wrap_pointer(@selector(data ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("userInfo:");
   arg2 = caml_wrap_pointer(@selector(userInfo ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("storagePolicy:");
   arg2 = caml_wrap_pointer(@selector(storagePolicy ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSURLCache");
   arg2 = caml_wrap_id([NSURLCache class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedURLCache:");
   arg2 = caml_wrap_pointer(@selector(sharedURLCache ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setSharedURLCache:");
   arg2 = caml_wrap_pointer(@selector(setSharedURLCache:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithMemoryCapacity:diskCapacity:diskPath:");
   arg2 = caml_wrap_pointer(@selector(initWithMemoryCapacity:diskCapacity:diskPath:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("cachedResponseForRequest:");
   arg2 = caml_wrap_pointer(@selector(cachedResponseForRequest:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("storeCachedResponse:forRequest:");
   arg2 = caml_wrap_pointer(@selector(storeCachedResponse:forRequest:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeCachedResponseForRequest:");
   arg2 = caml_wrap_pointer(@selector(removeCachedResponseForRequest:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeAllCachedResponses:");
   arg2 = caml_wrap_pointer(@selector(removeAllCachedResponses ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("memoryCapacity:");
   arg2 = caml_wrap_pointer(@selector(memoryCapacity ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("diskCapacity:");
   arg2 = caml_wrap_pointer(@selector(diskCapacity ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setMemoryCapacity:");
   arg2 = caml_wrap_pointer(@selector(setMemoryCapacity:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDiskCapacity:");
   arg2 = caml_wrap_pointer(@selector(setDiskCapacity:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("currentMemoryUsage:");
   arg2 = caml_wrap_pointer(@selector(currentMemoryUsage ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("currentDiskUsage:");
   arg2 = caml_wrap_pointer(@selector(currentDiskUsage ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
