// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSTextStorage.h>
value caml_init_NSTextStorage(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSTextStorage");
   arg2 = caml_wrap_id([NSTextStorage class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("addLayoutManager:");
   arg2 = caml_wrap_pointer(@selector(addLayoutManager:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeLayoutManager:");
   arg2 = caml_wrap_pointer(@selector(removeLayoutManager:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("layoutManagers:");
   arg2 = caml_wrap_pointer(@selector(layoutManagers ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("edited:range:changeInLength:");
   arg2 = caml_wrap_pointer(@selector(edited:range:changeInLength:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("processEditing:");
   arg2 = caml_wrap_pointer(@selector(processEditing ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("invalidateAttributesInRange:");
   arg2 = caml_wrap_pointer(@selector(invalidateAttributesInRange:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("ensureAttributesAreFixedInRange:");
   arg2 = caml_wrap_pointer(@selector(ensureAttributesAreFixedInRange:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fixesAttributesLazily:");
   arg2 = caml_wrap_pointer(@selector(fixesAttributesLazily ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("editedMask:");
   arg2 = caml_wrap_pointer(@selector(editedMask ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("editedRange:");
   arg2 = caml_wrap_pointer(@selector(editedRange ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("changeInLength:");
   arg2 = caml_wrap_pointer(@selector(changeInLength ));
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
   arg1 = caml_copy_string("textStorageWillProcessEditing:");
   arg2 = caml_wrap_pointer(@selector(textStorageWillProcessEditing:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("textStorageDidProcessEditing:");
   arg2 = caml_wrap_pointer(@selector(textStorageDidProcessEditing:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
