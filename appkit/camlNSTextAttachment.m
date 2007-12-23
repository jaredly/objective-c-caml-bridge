#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSTextAttachment.h>
value caml_init_NSTextAttachment(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSTextAttachment");
   arg2 = caml_wrap_id([NSTextAttachment class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("initWithFileWrapper:");
   arg2 = caml_wrap_pointer(@selector(initWithFileWrapper:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setFileWrapper:");
   arg2 = caml_wrap_pointer(@selector(setFileWrapper:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fileWrapper:");
   arg2 = caml_wrap_pointer(@selector(fileWrapper ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("attachmentCell:");
   arg2 = caml_wrap_pointer(@selector(attachmentCell ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setAttachmentCell:");
   arg2 = caml_wrap_pointer(@selector(setAttachmentCell:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSMutableAttributedString");
   arg2 = caml_wrap_id([NSMutableAttributedString class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("updateAttachmentsFromPath:");
   arg2 = caml_wrap_pointer(@selector(updateAttachmentsFromPath:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSTextAttachmentCell");
   arg2 = caml_wrap_id([NSTextAttachmentCell class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("NSAttributedString");
   arg2 = caml_wrap_id([NSAttributedString class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("attributedStringWithAttachment:");
   arg2 = caml_wrap_pointer(@selector(attributedStringWithAttachment:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}
