// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSTokenFieldCell.h>
value caml_init_NSTokenFieldCell(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSTokenFieldCell");
   arg2 = caml_wrap_id([NSTokenFieldCell class]);
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
   arg1 = caml_copy_string("setDelegate:");
   arg2 = caml_wrap_pointer(@selector(setDelegate:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("delegate:");
   arg2 = caml_wrap_pointer(@selector(delegate ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("tokenFieldCell:completionsForSubstring:indexOfToken:indexOfSelectedItem:");
   arg2 = caml_wrap_pointer(@selector(tokenFieldCell:completionsForSubstring:indexOfToken:indexOfSelectedItem:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenFieldCell:shouldAddObjects:atIndex:");
   arg2 = caml_wrap_pointer(@selector(tokenFieldCell:shouldAddObjects:atIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenFieldCell:displayStringForRepresentedObject:");
   arg2 = caml_wrap_pointer(@selector(tokenFieldCell:displayStringForRepresentedObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenFieldCell:editingStringForRepresentedObject:");
   arg2 = caml_wrap_pointer(@selector(tokenFieldCell:editingStringForRepresentedObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenFieldCell:representedObjectForEditingString:");
   arg2 = caml_wrap_pointer(@selector(tokenFieldCell:representedObjectForEditingString:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenFieldCell:writeRepresentedObjects:toPasteboard:");
   arg2 = caml_wrap_pointer(@selector(tokenFieldCell:writeRepresentedObjects:toPasteboard:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenFieldCell:readFromPasteboard:");
   arg2 = caml_wrap_pointer(@selector(tokenFieldCell:readFromPasteboard:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenFieldCell:menuForRepresentedObject:");
   arg2 = caml_wrap_pointer(@selector(tokenFieldCell:menuForRepresentedObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenFieldCell:hasMenuForRepresentedObject:");
   arg2 = caml_wrap_pointer(@selector(tokenFieldCell:hasMenuForRepresentedObject:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("tokenFieldCell:styleForRepresentedObject:");
   arg2 = caml_wrap_pointer(@selector(tokenFieldCell:styleForRepresentedObject:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
