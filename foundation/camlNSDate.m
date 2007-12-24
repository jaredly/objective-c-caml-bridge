// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSDate.h>
value caml_init_NSDate(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSDate");
   arg2 = caml_wrap_id([NSDate class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("date:");
   arg2 = caml_wrap_pointer(@selector(date ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("dateWithTimeIntervalSinceNow:");
   arg2 = caml_wrap_pointer(@selector(dateWithTimeIntervalSinceNow:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("dateWithTimeIntervalSinceReferenceDate:");
   arg2 = caml_wrap_pointer(@selector(dateWithTimeIntervalSinceReferenceDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("dateWithTimeIntervalSince1970:");
   arg2 = caml_wrap_pointer(@selector(dateWithTimeIntervalSince1970:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("distantFuture:");
   arg2 = caml_wrap_pointer(@selector(distantFuture ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("distantPast:");
   arg2 = caml_wrap_pointer(@selector(distantPast ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("init:");
   arg2 = caml_wrap_pointer(@selector(init ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithTimeIntervalSinceReferenceDate:");
   arg2 = caml_wrap_pointer(@selector(initWithTimeIntervalSinceReferenceDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithTimeInterval:sinceDate:");
   arg2 = caml_wrap_pointer(@selector(initWithTimeInterval:sinceDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithTimeIntervalSinceNow:");
   arg2 = caml_wrap_pointer(@selector(initWithTimeIntervalSinceNow:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("timeIntervalSinceDate:");
   arg2 = caml_wrap_pointer(@selector(timeIntervalSinceDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("timeIntervalSinceNow:");
   arg2 = caml_wrap_pointer(@selector(timeIntervalSinceNow ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("timeIntervalSince1970:");
   arg2 = caml_wrap_pointer(@selector(timeIntervalSince1970 ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("addTimeInterval:");
   arg2 = caml_wrap_pointer(@selector(addTimeInterval:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("earlierDate:");
   arg2 = caml_wrap_pointer(@selector(earlierDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("laterDate:");
   arg2 = caml_wrap_pointer(@selector(laterDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("compare:");
   arg2 = caml_wrap_pointer(@selector(compare:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("description:");
   arg2 = caml_wrap_pointer(@selector(description ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isEqualToDate:");
   arg2 = caml_wrap_pointer(@selector(isEqualToDate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("timeIntervalSinceReferenceDate:");
   arg2 = caml_wrap_pointer(@selector(timeIntervalSinceReferenceDate ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("timeIntervalSinceReferenceDate:");
   arg2 = caml_wrap_pointer(@selector(timeIntervalSinceReferenceDate ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
