// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSCompoundPredicate.h>
value caml_init_NSCompoundPredicate(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSCompoundPredicate");
   arg2 = caml_wrap_id([NSCompoundPredicate class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithType:subpredicates:");
   arg2 = caml_wrap_pointer(@selector(initWithType:subpredicates:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("compoundPredicateType:");
   arg2 = caml_wrap_pointer(@selector(compoundPredicateType ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("subpredicates:");
   arg2 = caml_wrap_pointer(@selector(subpredicates ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("andPredicateWithSubpredicates:");
   arg2 = caml_wrap_pointer(@selector(andPredicateWithSubpredicates:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("orPredicateWithSubpredicates:");
   arg2 = caml_wrap_pointer(@selector(orPredicateWithSubpredicates:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("notPredicateWithSubpredicate:");
   arg2 = caml_wrap_pointer(@selector(notPredicateWithSubpredicate:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
