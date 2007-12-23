#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSClassDescription.h>
value caml_init_NSClassDescription(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSClassDescription");
   arg2 = caml_wrap_id([NSClassDescription class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("registerClassDescription:forClass:");
   arg2 = caml_wrap_pointer(@selector(registerClassDescription:forClass:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("invalidateClassDescriptionCache:");
   arg2 = caml_wrap_pointer(@selector(invalidateClassDescriptionCache ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("classDescriptionForClass:");
   arg2 = caml_wrap_pointer(@selector(classDescriptionForClass:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("attributeKeys:");
   arg2 = caml_wrap_pointer(@selector(attributeKeys ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("toOneRelationshipKeys:");
   arg2 = caml_wrap_pointer(@selector(toOneRelationshipKeys ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("toManyRelationshipKeys:");
   arg2 = caml_wrap_pointer(@selector(toManyRelationshipKeys ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("inverseForRelationshipKey:");
   arg2 = caml_wrap_pointer(@selector(inverseForRelationshipKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("classDescription:");
   arg2 = caml_wrap_pointer(@selector(classDescription ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("attributeKeys:");
   arg2 = caml_wrap_pointer(@selector(attributeKeys ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("toOneRelationshipKeys:");
   arg2 = caml_wrap_pointer(@selector(toOneRelationshipKeys ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("toManyRelationshipKeys:");
   arg2 = caml_wrap_pointer(@selector(toManyRelationshipKeys ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("inverseForRelationshipKey:");
   arg2 = caml_wrap_pointer(@selector(inverseForRelationshipKey:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
