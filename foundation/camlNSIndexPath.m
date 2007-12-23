#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSIndexPath.h>
value caml_init_NSIndexPath(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSIndexPath");
   arg2 = caml_wrap_id([NSIndexPath class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("indexPathWithIndex:");
   arg2 = caml_wrap_pointer(@selector(indexPathWithIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("indexPathWithIndexes:length:");
   arg2 = caml_wrap_pointer(@selector(indexPathWithIndexes:length:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithIndex:");
   arg2 = caml_wrap_pointer(@selector(initWithIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithIndexes:length:");
   arg2 = caml_wrap_pointer(@selector(initWithIndexes:length:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("indexPathByAddingIndex:");
   arg2 = caml_wrap_pointer(@selector(indexPathByAddingIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("indexPathByRemovingLastIndex:");
   arg2 = caml_wrap_pointer(@selector(indexPathByRemovingLastIndex ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("indexAtPosition:");
   arg2 = caml_wrap_pointer(@selector(indexAtPosition:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("length:");
   arg2 = caml_wrap_pointer(@selector(length ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("getIndexes:");
   arg2 = caml_wrap_pointer(@selector(getIndexes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("compare:");
   arg2 = caml_wrap_pointer(@selector(compare:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
