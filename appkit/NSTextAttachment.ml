open Objc
open NSObject
open NSCell
open NSAttributedString


external init : unit -> unit = "caml_init_NSTextAttachment"
let _ = init()
(* Class object for NSTextAttachment *)
let class_NSTextAttachment = object
   val o = Classes.find "NSTextAttachment"
   method _new = (Objc.objcnew o : [`NSTextAttachment] nativeNSObject)
end
(* Encapsulation for native instance of NSTextAttachment *)
class native_NSTextAttachment = fun (o : [`NSTextAttachment] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithFileWrapper (fileWrapper : [`NSFileWrapper] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithFileWrapper:")[make_pointer_from_object fileWrapper]) : [`NSObject] Objc.nativeNSObject)
   method setFileWrapper (fileWrapper : [`NSFileWrapper] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFileWrapper:")[make_pointer_from_object fileWrapper]) : unit)
   method fileWrapper =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileWrapper:")[]) : [`NSFileWrapper] Objc.nativeNSObject)
   method attachmentCell =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attachmentCell:")[]) : [`NSObject] Objc.nativeNSObject)
   method setAttachmentCell (cell : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAttachmentCell:")[make_pointer_from_object cell]) : unit)
end
(* Class object for NSMutableAttributedString *)
let class_NSMutableAttributedString = object
   val o = Classes.find "NSMutableAttributedString"
   method _new = (Objc.objcnew o : [`NSMutableAttributedString] nativeNSObject)
(* methods for category NSMutableAttributedStringAttachmentConveniences *)
end
(* Encapsulation for native instance of NSMutableAttributedString *)
class native_NSMutableAttributedString = fun (o : [`NSMutableAttributedString] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSMutableAttributedStringAttachmentConveniences *)
   method updateAttachmentsFromPath (path : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "updateAttachmentsFromPath:")[make_pointer_from_object path]) : unit)
end
(* Class object for NSTextAttachmentCell *)
let class_NSTextAttachmentCell = object
   val o = Classes.find "NSTextAttachmentCell"
   method _new = (Objc.objcnew o : [`NSTextAttachmentCell] nativeNSObject)
end
(* Encapsulation for native instance of NSTextAttachmentCell *)
class native_NSTextAttachmentCell = fun (o : [`NSTextAttachmentCell] nativeNSObject) -> object (self)
   val o = o
   method o = o
end
(* Class object for NSAttributedString *)
let class_NSAttributedString = object
   val o = Classes.find "NSAttributedString"
   method _new = (Objc.objcnew o : [`NSAttributedString] nativeNSObject)
(* methods for category NSAttributedStringAttachmentConveniences *)
   method attributedStringWithAttachment (attachment : [`NSTextAttachment] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attributedStringWithAttachment:")[make_pointer_from_object attachment]) : [`NSAttributedString] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSAttributedString *)
class native_NSAttributedString = fun (o : [`NSAttributedString] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSAttributedStringAttachmentConveniences *)
end
