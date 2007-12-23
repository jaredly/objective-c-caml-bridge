#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSFontDescriptor.h>
value caml_init_NSFontDescriptor(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSFontDescriptor");
   arg2 = caml_wrap_id([NSFontDescriptor class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("postscriptName:");
   arg2 = caml_wrap_pointer(@selector(postscriptName ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("pointSize:");
   arg2 = caml_wrap_pointer(@selector(pointSize ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("matrix:");
   arg2 = caml_wrap_pointer(@selector(matrix ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("symbolicTraits:");
   arg2 = caml_wrap_pointer(@selector(symbolicTraits ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("objectForKey:");
   arg2 = caml_wrap_pointer(@selector(objectForKey:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fontAttributes:");
   arg2 = caml_wrap_pointer(@selector(fontAttributes ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fontDescriptorWithFontAttributes:");
   arg2 = caml_wrap_pointer(@selector(fontDescriptorWithFontAttributes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fontDescriptorWithName:size:");
   arg2 = caml_wrap_pointer(@selector(fontDescriptorWithName:size:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fontDescriptorWithName:matrix:");
   arg2 = caml_wrap_pointer(@selector(fontDescriptorWithName:matrix:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithFontAttributes:");
   arg2 = caml_wrap_pointer(@selector(initWithFontAttributes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("matchingFontDescriptorsWithMandatoryKeys:");
   arg2 = caml_wrap_pointer(@selector(matchingFontDescriptorsWithMandatoryKeys:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fontDescriptorByAddingAttributes:");
   arg2 = caml_wrap_pointer(@selector(fontDescriptorByAddingAttributes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fontDescriptorWithSymbolicTraits:");
   arg2 = caml_wrap_pointer(@selector(fontDescriptorWithSymbolicTraits:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fontDescriptorWithSize:");
   arg2 = caml_wrap_pointer(@selector(fontDescriptorWithSize:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fontDescriptorWithMatrix:");
   arg2 = caml_wrap_pointer(@selector(fontDescriptorWithMatrix:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fontDescriptorWithFace:");
   arg2 = caml_wrap_pointer(@selector(fontDescriptorWithFace:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fontDescriptorWithFamily:");
   arg2 = caml_wrap_pointer(@selector(fontDescriptorWithFamily:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
