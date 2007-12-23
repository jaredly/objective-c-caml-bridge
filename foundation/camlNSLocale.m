#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSLocale.h>
value caml_init_NSLocale(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSLocale");
   arg2 = caml_wrap_id([NSLocale class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("availableLocaleIdentifiers:");
   arg2 = caml_wrap_pointer(@selector(availableLocaleIdentifiers ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_ISOLanguageCodes:");
   arg2 = caml_wrap_pointer(@selector(l_ISOLanguageCodes ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_ISOCountryCodes:");
   arg2 = caml_wrap_pointer(@selector(l_ISOCountryCodes ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_ISOCurrencyCodes:");
   arg2 = caml_wrap_pointer(@selector(l_ISOCurrencyCodes ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("componentsFromLocaleIdentifier:");
   arg2 = caml_wrap_pointer(@selector(componentsFromLocaleIdentifier:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("localeIdentifierFromComponents:");
   arg2 = caml_wrap_pointer(@selector(localeIdentifierFromComponents:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("canonicalLocaleIdentifierFromString:");
   arg2 = caml_wrap_pointer(@selector(canonicalLocaleIdentifierFromString:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("systemLocale:");
   arg2 = caml_wrap_pointer(@selector(systemLocale ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("currentLocale:");
   arg2 = caml_wrap_pointer(@selector(currentLocale ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithLocaleIdentifier:");
   arg2 = caml_wrap_pointer(@selector(initWithLocaleIdentifier:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("localeIdentifier:");
   arg2 = caml_wrap_pointer(@selector(localeIdentifier ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("objectForKey:");
   arg2 = caml_wrap_pointer(@selector(objectForKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("displayNameForKey:value:");
   arg2 = caml_wrap_pointer(@selector(displayNameForKey:value:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
