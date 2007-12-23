#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSScriptKeyValueCoding.h>
value caml_init_NSScriptKeyValueCoding(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("valueAtIndex:inPropertyWithKey:");
   arg2 = caml_wrap_pointer(@selector(valueAtIndex:inPropertyWithKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("valueWithName:inPropertyWithKey:");
   arg2 = caml_wrap_pointer(@selector(valueWithName:inPropertyWithKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("valueWithUniqueID:inPropertyWithKey:");
   arg2 = caml_wrap_pointer(@selector(valueWithUniqueID:inPropertyWithKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("replaceValueAtIndex:inPropertyWithKey:withValue:");
   arg2 = caml_wrap_pointer(@selector(replaceValueAtIndex:inPropertyWithKey:withValue:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("insertValue:atIndex:inPropertyWithKey:");
   arg2 = caml_wrap_pointer(@selector(insertValue:atIndex:inPropertyWithKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeValueAtIndex:fromPropertyWithKey:");
   arg2 = caml_wrap_pointer(@selector(removeValueAtIndex:fromPropertyWithKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("insertValue:inPropertyWithKey:");
   arg2 = caml_wrap_pointer(@selector(insertValue:inPropertyWithKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("coerceValue:forKey:");
   arg2 = caml_wrap_pointer(@selector(coerceValue:forKey:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
