// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSScriptStandardSuiteCommands.h>
value caml_init_NSScriptStandardSuiteCommands(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSCloneCommand");
   arg2 = caml_wrap_id([NSCloneCommand class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setReceiversSpecifier:");
   arg2 = caml_wrap_pointer(@selector(setReceiversSpecifier:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("keySpecifier:");
   arg2 = caml_wrap_pointer(@selector(keySpecifier ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSCloseCommand");
   arg2 = caml_wrap_id([NSCloseCommand class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("saveOptions:");
   arg2 = caml_wrap_pointer(@selector(saveOptions ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSCountCommand");
   arg2 = caml_wrap_id([NSCountCommand class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("NSCreateCommand");
   arg2 = caml_wrap_id([NSCreateCommand class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("createClassDescription:");
   arg2 = caml_wrap_pointer(@selector(createClassDescription ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("resolvedKeyDictionary:");
   arg2 = caml_wrap_pointer(@selector(resolvedKeyDictionary ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSDeleteCommand");
   arg2 = caml_wrap_id([NSDeleteCommand class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setReceiversSpecifier:");
   arg2 = caml_wrap_pointer(@selector(setReceiversSpecifier:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("keySpecifier:");
   arg2 = caml_wrap_pointer(@selector(keySpecifier ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSExistsCommand");
   arg2 = caml_wrap_id([NSExistsCommand class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("NSGetCommand");
   arg2 = caml_wrap_id([NSGetCommand class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("NSMoveCommand");
   arg2 = caml_wrap_id([NSMoveCommand class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setReceiversSpecifier:");
   arg2 = caml_wrap_pointer(@selector(setReceiversSpecifier:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("keySpecifier:");
   arg2 = caml_wrap_pointer(@selector(keySpecifier ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSQuitCommand");
   arg2 = caml_wrap_id([NSQuitCommand class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("saveOptions:");
   arg2 = caml_wrap_pointer(@selector(saveOptions ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSSetCommand");
   arg2 = caml_wrap_id([NSSetCommand class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setReceiversSpecifier:");
   arg2 = caml_wrap_pointer(@selector(setReceiversSpecifier:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("keySpecifier:");
   arg2 = caml_wrap_pointer(@selector(keySpecifier ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
