// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSRulerMarker.h>
value caml_init_NSRulerMarker(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSRulerMarker");
   arg2 = caml_wrap_id([NSRulerMarker class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithRulerView:markerLocation:image:imageOrigin:");
   arg2 = caml_wrap_pointer(@selector(initWithRulerView:markerLocation:image:imageOrigin:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("ruler:");
   arg2 = caml_wrap_pointer(@selector(ruler ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setMarkerLocation:");
   arg2 = caml_wrap_pointer(@selector(setMarkerLocation:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("markerLocation:");
   arg2 = caml_wrap_pointer(@selector(markerLocation ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setImage:");
   arg2 = caml_wrap_pointer(@selector(setImage:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("image:");
   arg2 = caml_wrap_pointer(@selector(image ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setImageOrigin:");
   arg2 = caml_wrap_pointer(@selector(setImageOrigin:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("imageOrigin:");
   arg2 = caml_wrap_pointer(@selector(imageOrigin ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setMovable:");
   arg2 = caml_wrap_pointer(@selector(setMovable:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setRemovable:");
   arg2 = caml_wrap_pointer(@selector(setRemovable:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isMovable:");
   arg2 = caml_wrap_pointer(@selector(isMovable ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isRemovable:");
   arg2 = caml_wrap_pointer(@selector(isRemovable ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isDragging:");
   arg2 = caml_wrap_pointer(@selector(isDragging ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setRepresentedObject:");
   arg2 = caml_wrap_pointer(@selector(setRepresentedObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("representedObject:");
   arg2 = caml_wrap_pointer(@selector(representedObject ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("imageRectInRuler:");
   arg2 = caml_wrap_pointer(@selector(imageRectInRuler ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("thicknessRequiredInRuler:");
   arg2 = caml_wrap_pointer(@selector(thicknessRequiredInRuler ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("drawRect:");
   arg2 = caml_wrap_pointer(@selector(drawRect:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("trackMouse:adding:");
   arg2 = caml_wrap_pointer(@selector(trackMouse:adding:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
