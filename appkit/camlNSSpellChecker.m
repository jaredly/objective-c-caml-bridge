#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSSpellChecker.h>
value caml_init_NSSpellChecker(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSSpellChecker");
   arg2 = caml_wrap_id([NSSpellChecker class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedSpellChecker:");
   arg2 = caml_wrap_pointer(@selector(sharedSpellChecker ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("sharedSpellCheckerExists:");
   arg2 = caml_wrap_pointer(@selector(sharedSpellCheckerExists ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("uniqueSpellDocumentTag:");
   arg2 = caml_wrap_pointer(@selector(uniqueSpellDocumentTag ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("checkSpellingOfString:startingAt:language:wrap:inSpellDocumentWithTag:wordCount:");
   arg2 = caml_wrap_pointer(@selector(checkSpellingOfString:startingAt:language:wrap:inSpellDocumentWithTag:wordCount:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("checkSpellingOfString:startingAt:");
   arg2 = caml_wrap_pointer(@selector(checkSpellingOfString:startingAt:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("countWordsInString:language:");
   arg2 = caml_wrap_pointer(@selector(countWordsInString:language:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("updateSpellingPanelWithMisspelledWord:");
   arg2 = caml_wrap_pointer(@selector(updateSpellingPanelWithMisspelledWord:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("spellingPanel:");
   arg2 = caml_wrap_pointer(@selector(spellingPanel ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessoryView:");
   arg2 = caml_wrap_pointer(@selector(accessoryView ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAccessoryView:");
   arg2 = caml_wrap_pointer(@selector(setAccessoryView:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("ignoreWord:inSpellDocumentWithTag:");
   arg2 = caml_wrap_pointer(@selector(ignoreWord:inSpellDocumentWithTag:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("ignoredWordsInSpellDocumentWithTag:");
   arg2 = caml_wrap_pointer(@selector(ignoredWordsInSpellDocumentWithTag:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setIgnoredWords:inSpellDocumentWithTag:");
   arg2 = caml_wrap_pointer(@selector(setIgnoredWords:inSpellDocumentWithTag:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("guessesForWord:");
   arg2 = caml_wrap_pointer(@selector(guessesForWord:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("completionsForPartialWordRange:inString:language:inSpellDocumentWithTag:");
   arg2 = caml_wrap_pointer(@selector(completionsForPartialWordRange:inString:language:inSpellDocumentWithTag:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("closeSpellDocumentWithTag:");
   arg2 = caml_wrap_pointer(@selector(closeSpellDocumentWithTag:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("language:");
   arg2 = caml_wrap_pointer(@selector(language ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setLanguage:");
   arg2 = caml_wrap_pointer(@selector(setLanguage:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setWordFieldStringValue:");
   arg2 = caml_wrap_pointer(@selector(setWordFieldStringValue:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
