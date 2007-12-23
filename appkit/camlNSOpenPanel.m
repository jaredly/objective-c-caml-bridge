#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSOpenPanel.h>
value caml_init_NSOpenPanel(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSOpenPanel");
   arg2 = caml_wrap_id([NSOpenPanel class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("beginSheetForDirectory:file:types:modalForWindow:modalDelegate:didEndSelector:contextInfo:");
   arg2 = caml_wrap_pointer(@selector(beginSheetForDirectory:file:types:modalForWindow:modalDelegate:didEndSelector:contextInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("beginForDirectory:file:types:modelessDelegate:didEndSelector:contextInfo:");
   arg2 = caml_wrap_pointer(@selector(beginForDirectory:file:types:modelessDelegate:didEndSelector:contextInfo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("runModalForDirectory:file:types:");
   arg2 = caml_wrap_pointer(@selector(runModalForDirectory:file:types:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("runModalForTypes:");
   arg2 = caml_wrap_pointer(@selector(runModalForTypes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("openPanel:");
   arg2 = caml_wrap_pointer(@selector(openPanel ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_URLs:");
   arg2 = caml_wrap_pointer(@selector(l_URLs ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("filenames:");
   arg2 = caml_wrap_pointer(@selector(filenames ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("resolvesAliases:");
   arg2 = caml_wrap_pointer(@selector(resolvesAliases ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setResolvesAliases:");
   arg2 = caml_wrap_pointer(@selector(setResolvesAliases:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("canChooseDirectories:");
   arg2 = caml_wrap_pointer(@selector(canChooseDirectories ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCanChooseDirectories:");
   arg2 = caml_wrap_pointer(@selector(setCanChooseDirectories:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("allowsMultipleSelection:");
   arg2 = caml_wrap_pointer(@selector(allowsMultipleSelection ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAllowsMultipleSelection:");
   arg2 = caml_wrap_pointer(@selector(setAllowsMultipleSelection:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("canChooseFiles:");
   arg2 = caml_wrap_pointer(@selector(canChooseFiles ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCanChooseFiles:");
   arg2 = caml_wrap_pointer(@selector(setCanChooseFiles:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
