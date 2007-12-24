// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSColorSpace.h>
value caml_init_NSColorSpace(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSColorSpace");
   arg2 = caml_wrap_id([NSColorSpace class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithICCProfileData:");
   arg2 = caml_wrap_pointer(@selector(initWithICCProfileData:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_ICCProfileData:");
   arg2 = caml_wrap_pointer(@selector(l_ICCProfileData ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithColorSyncProfile:");
   arg2 = caml_wrap_pointer(@selector(initWithColorSyncProfile:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("colorSyncProfile:");
   arg2 = caml_wrap_pointer(@selector(colorSyncProfile ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("numberOfColorComponents:");
   arg2 = caml_wrap_pointer(@selector(numberOfColorComponents ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("colorSpaceModel:");
   arg2 = caml_wrap_pointer(@selector(colorSpaceModel ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("localizedName:");
   arg2 = caml_wrap_pointer(@selector(localizedName ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("genericRGBColorSpace:");
   arg2 = caml_wrap_pointer(@selector(genericRGBColorSpace ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("genericGrayColorSpace:");
   arg2 = caml_wrap_pointer(@selector(genericGrayColorSpace ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("genericCMYKColorSpace:");
   arg2 = caml_wrap_pointer(@selector(genericCMYKColorSpace ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("deviceRGBColorSpace:");
   arg2 = caml_wrap_pointer(@selector(deviceRGBColorSpace ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("deviceGrayColorSpace:");
   arg2 = caml_wrap_pointer(@selector(deviceGrayColorSpace ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("deviceCMYKColorSpace:");
   arg2 = caml_wrap_pointer(@selector(deviceCMYKColorSpace ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
