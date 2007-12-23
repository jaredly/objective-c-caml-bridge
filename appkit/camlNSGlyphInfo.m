#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSGlyphInfo.h>
value caml_init_NSGlyphInfo(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSGlyphInfo");
   arg2 = caml_wrap_id([NSGlyphInfo class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("glyphInfoWithGlyphName:forFont:baseString:");
   arg2 = caml_wrap_pointer(@selector(glyphInfoWithGlyphName:forFont:baseString:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("glyphInfoWithGlyph:forFont:baseString:");
   arg2 = caml_wrap_pointer(@selector(glyphInfoWithGlyph:forFont:baseString:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("glyphInfoWithCharacterIdentifier:collection:baseString:");
   arg2 = caml_wrap_pointer(@selector(glyphInfoWithCharacterIdentifier:collection:baseString:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("glyphName:");
   arg2 = caml_wrap_pointer(@selector(glyphName ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("characterIdentifier:");
   arg2 = caml_wrap_pointer(@selector(characterIdentifier ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("characterCollection:");
   arg2 = caml_wrap_pointer(@selector(characterCollection ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
