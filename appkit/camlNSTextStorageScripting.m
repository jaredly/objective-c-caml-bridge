#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSTextStorageScripting.h>
value caml_init_NSTextStorageScripting(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSTextStorage");
   arg2 = caml_wrap_id([NSTextStorage class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("attributeRuns:");
   arg2 = caml_wrap_pointer(@selector(attributeRuns ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAttributeRuns:");
   arg2 = caml_wrap_pointer(@selector(setAttributeRuns:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("paragraphs:");
   arg2 = caml_wrap_pointer(@selector(paragraphs ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setParagraphs:");
   arg2 = caml_wrap_pointer(@selector(setParagraphs:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("words:");
   arg2 = caml_wrap_pointer(@selector(words ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setWords:");
   arg2 = caml_wrap_pointer(@selector(setWords:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("characters:");
   arg2 = caml_wrap_pointer(@selector(characters ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCharacters:");
   arg2 = caml_wrap_pointer(@selector(setCharacters:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("font:");
   arg2 = caml_wrap_pointer(@selector(font ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setFont:");
   arg2 = caml_wrap_pointer(@selector(setFont:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("foregroundColor:");
   arg2 = caml_wrap_pointer(@selector(foregroundColor ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setForegroundColor:");
   arg2 = caml_wrap_pointer(@selector(setForegroundColor:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
