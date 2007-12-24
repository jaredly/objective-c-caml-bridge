// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSValueTransformer.h>
value caml_init_NSValueTransformer(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSValueTransformer");
   arg2 = caml_wrap_id([NSValueTransformer class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setValueTransformer:forName:");
   arg2 = caml_wrap_pointer(@selector(setValueTransformer:forName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("valueTransformerForName:");
   arg2 = caml_wrap_pointer(@selector(valueTransformerForName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("valueTransformerNames:");
   arg2 = caml_wrap_pointer(@selector(valueTransformerNames ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("transformedValueClass:");
   arg2 = caml_wrap_pointer(@selector(transformedValueClass ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("allowsReverseTransformation:");
   arg2 = caml_wrap_pointer(@selector(allowsReverseTransformation ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("transformedValue:");
   arg2 = caml_wrap_pointer(@selector(transformedValue:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("reverseTransformedValue:");
   arg2 = caml_wrap_pointer(@selector(reverseTransformedValue:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
