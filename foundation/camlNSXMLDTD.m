// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSXMLDTD.h>
value caml_init_NSXMLDTD(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSXMLDTD");
   arg2 = caml_wrap_id([NSXMLDTD class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithContentsOfURL:options:error:");
   arg2 = caml_wrap_pointer(@selector(initWithContentsOfURL:options:error:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithData:options:error:");
   arg2 = caml_wrap_pointer(@selector(initWithData:options:error:));
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
   arg1 = caml_copy_string("insertChild:atIndex:");
   arg2 = caml_wrap_pointer(@selector(insertChild:atIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("insertChildren:atIndex:");
   arg2 = caml_wrap_pointer(@selector(insertChildren:atIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removeChildAtIndex:");
   arg2 = caml_wrap_pointer(@selector(removeChildAtIndex:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setChildren:");
   arg2 = caml_wrap_pointer(@selector(setChildren:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("addChild:");
   arg2 = caml_wrap_pointer(@selector(addChild:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("replaceChildAtIndex:withNode:");
   arg2 = caml_wrap_pointer(@selector(replaceChildAtIndex:withNode:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("entityDeclarationForName:");
   arg2 = caml_wrap_pointer(@selector(entityDeclarationForName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("notationDeclarationForName:");
   arg2 = caml_wrap_pointer(@selector(notationDeclarationForName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("elementDeclarationForName:");
   arg2 = caml_wrap_pointer(@selector(elementDeclarationForName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("attributeDeclarationForName:elementName:");
   arg2 = caml_wrap_pointer(@selector(attributeDeclarationForName:elementName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("predefinedEntityDeclarationForName:");
   arg2 = caml_wrap_pointer(@selector(predefinedEntityDeclarationForName:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
