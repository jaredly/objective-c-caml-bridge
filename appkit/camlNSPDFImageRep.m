// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSPDFImageRep.h>
value caml_init_NSPDFImageRep(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSPDFImageRep");
   arg2 = caml_wrap_id([NSPDFImageRep class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("imageRepWithData:");
   arg2 = caml_wrap_pointer(@selector(imageRepWithData:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("initWithData:");
   arg2 = caml_wrap_pointer(@selector(initWithData:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("l_PDFRepresentation:");
   arg2 = caml_wrap_pointer(@selector(l_PDFRepresentation ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("bounds:");
   arg2 = caml_wrap_pointer(@selector(bounds ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setCurrentPage:");
   arg2 = caml_wrap_pointer(@selector(setCurrentPage:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("currentPage:");
   arg2 = caml_wrap_pointer(@selector(currentPage ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("pageCount:");
   arg2 = caml_wrap_pointer(@selector(pageCount ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
