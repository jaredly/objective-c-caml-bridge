#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSExpression.h>
value caml_init_NSExpression(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSExpression");
   arg2 = caml_wrap_id([NSExpression class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("expressionForConstantValue:");
   arg2 = caml_wrap_pointer(@selector(expressionForConstantValue:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("expressionForEvaluatedObject:");
   arg2 = caml_wrap_pointer(@selector(expressionForEvaluatedObject ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("expressionForVariable:");
   arg2 = caml_wrap_pointer(@selector(expressionForVariable:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("expressionForKeyPath:");
   arg2 = caml_wrap_pointer(@selector(expressionForKeyPath:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("expressionForFunction:arguments:");
   arg2 = caml_wrap_pointer(@selector(expressionForFunction:arguments:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithExpressionType:");
   arg2 = caml_wrap_pointer(@selector(initWithExpressionType:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("expressionType:");
   arg2 = caml_wrap_pointer(@selector(expressionType ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("constantValue:");
   arg2 = caml_wrap_pointer(@selector(constantValue ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("keyPath:");
   arg2 = caml_wrap_pointer(@selector(keyPath ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("function:");
   arg2 = caml_wrap_pointer(@selector(function ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("variable:");
   arg2 = caml_wrap_pointer(@selector(variable ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("operand:");
   arg2 = caml_wrap_pointer(@selector(operand ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("arguments:");
   arg2 = caml_wrap_pointer(@selector(arguments ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("expressionValueWithObject:context:");
   arg2 = caml_wrap_pointer(@selector(expressionValueWithObject:context:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
