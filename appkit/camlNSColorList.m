// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSColorList.h>
value caml_init_NSColorList(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSColorList");
   arg2 = caml_wrap_id([NSColorList class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("availableColorLists:");
   arg2 = caml_wrap_pointer(@selector(availableColorLists ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("colorListNamed:");
   arg2 = caml_wrap_pointer(@selector(colorListNamed:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithName:");
   arg2 = caml_wrap_pointer(@selector(initWithName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithName:fromFile:");
   arg2 = caml_wrap_pointer(@selector(initWithName:fromFile:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("name:");
   arg2 = caml_wrap_pointer(@selector(name ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setColor:forKey:");
   arg2 = caml_wrap_pointer(@selector(setColor:forKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("insertColor:key:atIndex:");
   arg2 = caml_wrap_pointer(@selector(insertColor:key:atIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeColorWithKey:");
   arg2 = caml_wrap_pointer(@selector(removeColorWithKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("colorWithKey:");
   arg2 = caml_wrap_pointer(@selector(colorWithKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("allKeys:");
   arg2 = caml_wrap_pointer(@selector(allKeys ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isEditable:");
   arg2 = caml_wrap_pointer(@selector(isEditable ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("writeToFile:");
   arg2 = caml_wrap_pointer(@selector(writeToFile:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeFile:");
   arg2 = caml_wrap_pointer(@selector(removeFile ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
