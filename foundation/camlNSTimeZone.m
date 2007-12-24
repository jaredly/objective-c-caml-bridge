// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSTimeZone.h>
value caml_init_NSTimeZone(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSTimeZone");
   arg2 = caml_wrap_id([NSTimeZone class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("timeZoneWithName:");
   arg2 = caml_wrap_pointer(@selector(timeZoneWithName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("timeZoneWithName:data:");
   arg2 = caml_wrap_pointer(@selector(timeZoneWithName:data:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithName:");
   arg2 = caml_wrap_pointer(@selector(initWithName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithName:data:");
   arg2 = caml_wrap_pointer(@selector(initWithName:data:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("timeZoneForSecondsFromGMT:");
   arg2 = caml_wrap_pointer(@selector(timeZoneForSecondsFromGMT:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("timeZoneWithAbbreviation:");
   arg2 = caml_wrap_pointer(@selector(timeZoneWithAbbreviation:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("systemTimeZone:");
   arg2 = caml_wrap_pointer(@selector(systemTimeZone ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("resetSystemTimeZone:");
   arg2 = caml_wrap_pointer(@selector(resetSystemTimeZone ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("defaultTimeZone:");
   arg2 = caml_wrap_pointer(@selector(defaultTimeZone ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDefaultTimeZone:");
   arg2 = caml_wrap_pointer(@selector(setDefaultTimeZone:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("localTimeZone:");
   arg2 = caml_wrap_pointer(@selector(localTimeZone ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("knownTimeZoneNames:");
   arg2 = caml_wrap_pointer(@selector(knownTimeZoneNames ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("abbreviationDictionary:");
   arg2 = caml_wrap_pointer(@selector(abbreviationDictionary ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("secondsFromGMT:");
   arg2 = caml_wrap_pointer(@selector(secondsFromGMT ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("abbreviation:");
   arg2 = caml_wrap_pointer(@selector(abbreviation ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isDaylightSavingTime:");
   arg2 = caml_wrap_pointer(@selector(isDaylightSavingTime ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("description:");
   arg2 = caml_wrap_pointer(@selector(description ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isEqualToTimeZone:");
   arg2 = caml_wrap_pointer(@selector(isEqualToTimeZone:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("name:");
   arg2 = caml_wrap_pointer(@selector(name ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("data:");
   arg2 = caml_wrap_pointer(@selector(data ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("secondsFromGMTForDate:");
   arg2 = caml_wrap_pointer(@selector(secondsFromGMTForDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("abbreviationForDate:");
   arg2 = caml_wrap_pointer(@selector(abbreviationForDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isDaylightSavingTimeForDate:");
   arg2 = caml_wrap_pointer(@selector(isDaylightSavingTimeForDate:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
