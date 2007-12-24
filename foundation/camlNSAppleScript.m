// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSAppleScript.h>
value caml_init_NSAppleScript(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSAppleScript");
   arg2 = caml_wrap_id([NSAppleScript class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithContentsOfURL:error:");
   arg2 = caml_wrap_pointer(@selector(initWithContentsOfURL:error:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithSource:");
   arg2 = caml_wrap_pointer(@selector(initWithSource:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("source:");
   arg2 = caml_wrap_pointer(@selector(source ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isCompiled:");
   arg2 = caml_wrap_pointer(@selector(isCompiled ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("compileAndReturnError:");
   arg2 = caml_wrap_pointer(@selector(compileAndReturnError:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("executeAndReturnError:");
   arg2 = caml_wrap_pointer(@selector(executeAndReturnError:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("executeAppleEvent:error:");
   arg2 = caml_wrap_pointer(@selector(executeAppleEvent:error:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
