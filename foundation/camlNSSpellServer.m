// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSSpellServer.h>
value caml_init_NSSpellServer(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSSpellServer");
   arg2 = caml_wrap_id([NSSpellServer class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setDelegate:");
   arg2 = caml_wrap_pointer(@selector(setDelegate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("delegate:");
   arg2 = caml_wrap_pointer(@selector(delegate ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("registerLanguage:byVendor:");
   arg2 = caml_wrap_pointer(@selector(registerLanguage:byVendor:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isWordInUserDictionaries:caseSensitive:");
   arg2 = caml_wrap_pointer(@selector(isWordInUserDictionaries:caseSensitive:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("run:");
   arg2 = caml_wrap_pointer(@selector(run ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("spellServer:findMisspelledWordInString:language:wordCount:countOnly:");
   arg2 = caml_wrap_pointer(@selector(spellServer:findMisspelledWordInString:language:wordCount:countOnly:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("spellServer:suggestGuessesForWord:inLanguage:");
   arg2 = caml_wrap_pointer(@selector(spellServer:suggestGuessesForWord:inLanguage:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("spellServer:didLearnWord:inLanguage:");
   arg2 = caml_wrap_pointer(@selector(spellServer:didLearnWord:inLanguage:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("spellServer:didForgetWord:inLanguage:");
   arg2 = caml_wrap_pointer(@selector(spellServer:didForgetWord:inLanguage:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("spellServer:suggestCompletionsForPartialWordRange:inString:language:");
   arg2 = caml_wrap_pointer(@selector(spellServer:suggestCompletionsForPartialWordRange:inString:language:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
