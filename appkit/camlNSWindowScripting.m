// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSWindowScripting.h>
value caml_init_NSWindowScripting(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSWindow");
   arg2 = caml_wrap_id([NSWindow class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("hasCloseBox:");
   arg2 = caml_wrap_pointer(@selector(hasCloseBox ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("hasTitleBar:");
   arg2 = caml_wrap_pointer(@selector(hasTitleBar ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isFloatingPanel:");
   arg2 = caml_wrap_pointer(@selector(isFloatingPanel ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isMiniaturizable:");
   arg2 = caml_wrap_pointer(@selector(isMiniaturizable ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isModalPanel:");
   arg2 = caml_wrap_pointer(@selector(isModalPanel ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isResizable:");
   arg2 = caml_wrap_pointer(@selector(isResizable ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isZoomable:");
   arg2 = caml_wrap_pointer(@selector(isZoomable ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("orderedIndex:");
   arg2 = caml_wrap_pointer(@selector(orderedIndex ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setIsMiniaturized:");
   arg2 = caml_wrap_pointer(@selector(setIsMiniaturized:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setIsVisible:");
   arg2 = caml_wrap_pointer(@selector(setIsVisible:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setIsZoomed:");
   arg2 = caml_wrap_pointer(@selector(setIsZoomed:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setOrderedIndex:");
   arg2 = caml_wrap_pointer(@selector(setOrderedIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("handleCloseScriptCommand:");
   arg2 = caml_wrap_pointer(@selector(handleCloseScriptCommand:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("handlePrintScriptCommand:");
   arg2 = caml_wrap_pointer(@selector(handlePrintScriptCommand:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("handleSaveScriptCommand:");
   arg2 = caml_wrap_pointer(@selector(handleSaveScriptCommand:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
