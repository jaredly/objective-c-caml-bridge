// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSDebug.h>
value caml_init_NSDebug(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSAutoreleasePool");
   arg2 = caml_wrap_id([NSAutoreleasePool class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("enableRelease:");
   arg2 = caml_wrap_pointer(@selector(enableRelease:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("showPools:");
   arg2 = caml_wrap_pointer(@selector(showPools ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("resetTotalAutoreleasedObjects:");
   arg2 = caml_wrap_pointer(@selector(resetTotalAutoreleasedObjects ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("totalAutoreleasedObjects:");
   arg2 = caml_wrap_pointer(@selector(totalAutoreleasedObjects ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("enableFreedObjectCheck:");
   arg2 = caml_wrap_pointer(@selector(enableFreedObjectCheck:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("autoreleasedObjectCount:");
   arg2 = caml_wrap_pointer(@selector(autoreleasedObjectCount ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("topAutoreleasePoolCount:");
   arg2 = caml_wrap_pointer(@selector(topAutoreleasePoolCount ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("poolCountHighWaterMark:");
   arg2 = caml_wrap_pointer(@selector(poolCountHighWaterMark ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setPoolCountHighWaterMark:");
   arg2 = caml_wrap_pointer(@selector(setPoolCountHighWaterMark:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("poolCountHighWaterResolution:");
   arg2 = caml_wrap_pointer(@selector(poolCountHighWaterResolution ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setPoolCountHighWaterResolution:");
   arg2 = caml_wrap_pointer(@selector(setPoolCountHighWaterResolution:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
