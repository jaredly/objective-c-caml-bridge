// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSXMLDTDNode.h>
value caml_init_NSXMLDTDNode(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSXMLDTDNode");
   arg2 = caml_wrap_id([NSXMLDTDNode class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithXMLString:");
   arg2 = caml_wrap_pointer(@selector(initWithXMLString:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDTDKind:");
   arg2 = caml_wrap_pointer(@selector(setDTDKind:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_DTDKind:");
   arg2 = caml_wrap_pointer(@selector(l_DTDKind ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isExternal:");
   arg2 = caml_wrap_pointer(@selector(isExternal ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setPublicID:");
   arg2 = caml_wrap_pointer(@selector(setPublicID:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("publicID:");
   arg2 = caml_wrap_pointer(@selector(publicID ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setSystemID:");
   arg2 = caml_wrap_pointer(@selector(setSystemID:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("systemID:");
   arg2 = caml_wrap_pointer(@selector(systemID ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setNotationName:");
   arg2 = caml_wrap_pointer(@selector(setNotationName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("notationName:");
   arg2 = caml_wrap_pointer(@selector(notationName ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
