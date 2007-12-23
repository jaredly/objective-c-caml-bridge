#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSPortCoder.h>
value caml_init_NSPortCoder(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSPortCoder");
   arg2 = caml_wrap_id([NSPortCoder class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("isBycopy:");
   arg2 = caml_wrap_pointer(@selector(isBycopy ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isByref:");
   arg2 = caml_wrap_pointer(@selector(isByref ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("connection:");
   arg2 = caml_wrap_pointer(@selector(connection ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("encodePortObject:");
   arg2 = caml_wrap_pointer(@selector(encodePortObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("decodePortObject:");
   arg2 = caml_wrap_pointer(@selector(decodePortObject ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("portCoderWithReceivePort:sendPort:components:");
   arg2 = caml_wrap_pointer(@selector(portCoderWithReceivePort:sendPort:components:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithReceivePort:sendPort:components:");
   arg2 = caml_wrap_pointer(@selector(initWithReceivePort:sendPort:components:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("dispatch:");
   arg2 = caml_wrap_pointer(@selector(dispatch ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("classForPortCoder:");
   arg2 = caml_wrap_pointer(@selector(classForPortCoder ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("replacementObjectForPortCoder:");
   arg2 = caml_wrap_pointer(@selector(replacementObjectForPortCoder:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
