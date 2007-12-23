#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSFontPanel.h>
value caml_init_NSFontPanel(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSFontPanel");
   arg2 = caml_wrap_id([NSFontPanel class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedFontPanel:");
   arg2 = caml_wrap_pointer(@selector(sharedFontPanel ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("sharedFontPanelExists:");
   arg2 = caml_wrap_pointer(@selector(sharedFontPanelExists ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("accessoryView:");
   arg2 = caml_wrap_pointer(@selector(accessoryView ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAccessoryView:");
   arg2 = caml_wrap_pointer(@selector(setAccessoryView:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setPanelFont:isMultiple:");
   arg2 = caml_wrap_pointer(@selector(setPanelFont:isMultiple:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("panelConvertFont:");
   arg2 = caml_wrap_pointer(@selector(panelConvertFont:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("worksWhenModal:");
   arg2 = caml_wrap_pointer(@selector(worksWhenModal ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isEnabled:");
   arg2 = caml_wrap_pointer(@selector(isEnabled ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setEnabled:");
   arg2 = caml_wrap_pointer(@selector(setEnabled:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("reloadDefaultFontFamilies:");
   arg2 = caml_wrap_pointer(@selector(reloadDefaultFontFamilies ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("validModesForFontPanel:");
   arg2 = caml_wrap_pointer(@selector(validModesForFontPanel:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
