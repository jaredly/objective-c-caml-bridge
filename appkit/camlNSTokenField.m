#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSTokenField.h>
value caml_init_NSTokenField(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSTokenField");
   arg2 = caml_wrap_id([NSTokenField class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("setTokenStyle:");
   arg2 = caml_wrap_pointer(@selector(setTokenStyle:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenStyle:");
   arg2 = caml_wrap_pointer(@selector(tokenStyle ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCompletionDelay:");
   arg2 = caml_wrap_pointer(@selector(setCompletionDelay:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("completionDelay:");
   arg2 = caml_wrap_pointer(@selector(completionDelay ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("defaultCompletionDelay:");
   arg2 = caml_wrap_pointer(@selector(defaultCompletionDelay ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setTokenizingCharacterSet:");
   arg2 = caml_wrap_pointer(@selector(setTokenizingCharacterSet:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenizingCharacterSet:");
   arg2 = caml_wrap_pointer(@selector(tokenizingCharacterSet ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("defaultTokenizingCharacterSet:");
   arg2 = caml_wrap_pointer(@selector(defaultTokenizingCharacterSet ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:");
   arg2 = caml_wrap_pointer(@selector(tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenField:shouldAddObjects:atIndex:");
   arg2 = caml_wrap_pointer(@selector(tokenField:shouldAddObjects:atIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenField:displayStringForRepresentedObject:");
   arg2 = caml_wrap_pointer(@selector(tokenField:displayStringForRepresentedObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenField:editingStringForRepresentedObject:");
   arg2 = caml_wrap_pointer(@selector(tokenField:editingStringForRepresentedObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenField:representedObjectForEditingString:");
   arg2 = caml_wrap_pointer(@selector(tokenField:representedObjectForEditingString:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenField:writeRepresentedObjects:toPasteboard:");
   arg2 = caml_wrap_pointer(@selector(tokenField:writeRepresentedObjects:toPasteboard:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenField:readFromPasteboard:");
   arg2 = caml_wrap_pointer(@selector(tokenField:readFromPasteboard:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenField:menuForRepresentedObject:");
   arg2 = caml_wrap_pointer(@selector(tokenField:menuForRepresentedObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenField:hasMenuForRepresentedObject:");
   arg2 = caml_wrap_pointer(@selector(tokenField:hasMenuForRepresentedObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenField:styleForRepresentedObject:");
   arg2 = caml_wrap_pointer(@selector(tokenField:styleForRepresentedObject:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
