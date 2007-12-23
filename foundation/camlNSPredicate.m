#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSPredicate.h>
value caml_init_NSPredicate(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSMutableArray");
   arg2 = caml_wrap_id([NSMutableArray class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("filterUsingPredicate:");
   arg2 = caml_wrap_pointer(@selector(filterUsingPredicate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSPredicate");
   arg2 = caml_wrap_id([NSPredicate class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("predicateWithFormat:argumentArray:");
   arg2 = caml_wrap_pointer(@selector(predicateWithFormat:argumentArray:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("predicateWithFormat:");
   arg2 = caml_wrap_pointer(@selector(predicateWithFormat:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("predicateWithFormat:arguments:");
   arg2 = caml_wrap_pointer(@selector(predicateWithFormat:arguments:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("predicateWithValue:");
   arg2 = caml_wrap_pointer(@selector(predicateWithValue:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("predicateWithSubstitutionVariables:");
   arg2 = caml_wrap_pointer(@selector(predicateWithSubstitutionVariables:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("evaluateWithObject:");
   arg2 = caml_wrap_pointer(@selector(evaluateWithObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("predicateFormat:");
   arg2 = caml_wrap_pointer(@selector(predicateFormat ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSArray");
   arg2 = caml_wrap_id([NSArray class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("filteredArrayUsingPredicate:");
   arg2 = caml_wrap_pointer(@selector(filteredArrayUsingPredicate:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
