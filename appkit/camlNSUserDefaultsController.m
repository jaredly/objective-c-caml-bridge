// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSUserDefaultsController.h>
value caml_init_NSUserDefaultsController(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSUserDefaultsController");
   arg2 = caml_wrap_id([NSUserDefaultsController class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedUserDefaultsController:");
   arg2 = caml_wrap_pointer(@selector(sharedUserDefaultsController ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithDefaults:initialValues:");
   arg2 = caml_wrap_pointer(@selector(initWithDefaults:initialValues:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("defaults:");
   arg2 = caml_wrap_pointer(@selector(defaults ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setInitialValues:");
   arg2 = caml_wrap_pointer(@selector(setInitialValues:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initialValues:");
   arg2 = caml_wrap_pointer(@selector(initialValues ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAppliesImmediately:");
   arg2 = caml_wrap_pointer(@selector(setAppliesImmediately:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("appliesImmediately:");
   arg2 = caml_wrap_pointer(@selector(appliesImmediately ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("hasUnappliedChanges:");
   arg2 = caml_wrap_pointer(@selector(hasUnappliedChanges ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("values:");
   arg2 = caml_wrap_pointer(@selector(values ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("revert:");
   arg2 = caml_wrap_pointer(@selector(revert:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("save:");
   arg2 = caml_wrap_pointer(@selector(save:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("revertToInitialValues:");
   arg2 = caml_wrap_pointer(@selector(revertToInitialValues:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
