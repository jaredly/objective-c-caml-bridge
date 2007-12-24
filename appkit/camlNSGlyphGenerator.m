// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSGlyphGenerator.h>
value caml_init_NSGlyphGenerator(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSGlyphGenerator");
   arg2 = caml_wrap_id([NSGlyphGenerator class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("generateGlyphsForGlyphStorage:desiredNumberOfCharacters:glyphIndex:characterIndex:");
   arg2 = caml_wrap_pointer(@selector(generateGlyphsForGlyphStorage:desiredNumberOfCharacters:glyphIndex:characterIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("sharedGlyphGenerator:");
   arg2 = caml_wrap_pointer(@selector(sharedGlyphGenerator ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
