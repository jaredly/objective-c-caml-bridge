// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSSortDescriptor.h>
value caml_init_NSSortDescriptor(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSSortDescriptor");
   arg2 = caml_wrap_id([NSSortDescriptor class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithKey:ascending:");
   arg2 = caml_wrap_pointer(@selector(initWithKey:ascending:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithKey:ascending:selector:");
   arg2 = caml_wrap_pointer(@selector(initWithKey:ascending:selector:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("key:");
   arg2 = caml_wrap_pointer(@selector(key ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("ascending:");
   arg2 = caml_wrap_pointer(@selector(ascending ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("selector:");
   arg2 = caml_wrap_pointer(@selector(selector ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("compareObject:toObject:");
   arg2 = caml_wrap_pointer(@selector(compareObject:toObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("reversedSortDescriptor:");
   arg2 = caml_wrap_pointer(@selector(reversedSortDescriptor ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSArray");
   arg2 = caml_wrap_id([NSArray class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sortedArrayUsingDescriptors:");
   arg2 = caml_wrap_pointer(@selector(sortedArrayUsingDescriptors:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSMutableArray");
   arg2 = caml_wrap_id([NSMutableArray class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sortUsingDescriptors:");
   arg2 = caml_wrap_pointer(@selector(sortUsingDescriptors:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
