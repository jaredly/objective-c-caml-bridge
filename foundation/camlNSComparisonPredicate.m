#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSComparisonPredicate.h>
value caml_init_NSComparisonPredicate(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSComparisonPredicate");
   arg2 = caml_wrap_id([NSComparisonPredicate class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("predicateWithLeftExpression:rightExpression:modifier:l_type:options:");
   arg2 = caml_wrap_pointer(@selector(predicateWithLeftExpression:rightExpression:modifier:l_type:options:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("predicateWithLeftExpression:rightExpression:customSelector:");
   arg2 = caml_wrap_pointer(@selector(predicateWithLeftExpression:rightExpression:customSelector:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithLeftExpression:rightExpression:modifier:l_type:options:");
   arg2 = caml_wrap_pointer(@selector(initWithLeftExpression:rightExpression:modifier:l_type:options:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithLeftExpression:rightExpression:customSelector:");
   arg2 = caml_wrap_pointer(@selector(initWithLeftExpression:rightExpression:customSelector:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("predicateOperatorType:");
   arg2 = caml_wrap_pointer(@selector(predicateOperatorType ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("comparisonPredicateModifier:");
   arg2 = caml_wrap_pointer(@selector(comparisonPredicateModifier ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("leftExpression:");
   arg2 = caml_wrap_pointer(@selector(leftExpression ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("rightExpression:");
   arg2 = caml_wrap_pointer(@selector(rightExpression ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("customSelector:");
   arg2 = caml_wrap_pointer(@selector(customSelector ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("options:");
   arg2 = caml_wrap_pointer(@selector(options ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
