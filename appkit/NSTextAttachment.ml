(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSCell
open NSAttributedString


external init : unit -> unit = "caml_init_NSTextAttachment"
let _ = init()
(* ENUMS *)
let _NSAttachmentCharacter = 65532L


let make_NSCell_of_NSTextAttachmentCell (o : [`NSTextAttachmentCell] nativeNSObject) = (Obj.magic o : [`NSCell] nativeNSObject)
(* Class object for NSTextAttachmentCell *)
let class_NSTextAttachmentCell = object
   val repr = Classes.find "NSTextAttachmentCell"
   method _new = (Objc.objcnew repr : [`NSTextAttachmentCell] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTextAttachmentCell] nativeNSObject)
end
(* Encapsulation for native instance of NSTextAttachmentCell *)
class native_NSTextAttachmentCell = fun (o : [`NSTextAttachmentCell] nativeNSObject) -> object (self)
   inherit native_NSCell (make_NSCell_of_NSTextAttachmentCell o) as super
end
let make_NSObject_of_NSTextAttachment (o : [`NSTextAttachment] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSTextAttachment *)
let class_NSTextAttachment = object
   val repr = Classes.find "NSTextAttachment"
   method _new = (Objc.objcnew repr : [`NSTextAttachment] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTextAttachment] nativeNSObject)
end
(* Encapsulation for native instance of NSTextAttachment *)
class native_NSTextAttachment = fun (o : [`NSTextAttachment] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSTextAttachment o) as super
   method initWithFileWrapper (fileWrapper : [`NSFileWrapper] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithFileWrapper:")[make_pointer_from_object fileWrapper]) : [`NSObject] Objc.nativeNSObject)
   method setFileWrapper (fileWrapper : [`NSFileWrapper] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFileWrapper:")[make_pointer_from_object fileWrapper]) : unit)
   method fileWrapper =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileWrapper:")[]) : [`NSFileWrapper] Objc.nativeNSObject)
   method attachmentCell =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "attachmentCell:")[]) : [`NSObject] Objc.nativeNSObject)
   method setAttachmentCell (cell : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAttachmentCell:")[make_pointer_from_object cell]) : unit)
end
(* Class object for NSAttributedString *)
let class_NSAttributedString = object
   val repr = Classes.find "NSAttributedString"
   method _new = (Objc.objcnew repr : [`NSAttributedString] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSAttributedString] nativeNSObject)
(* methods for category NSAttributedStringAttachmentConveniences *)
   method attributedStringWithAttachment (attachment : [`NSTextAttachment] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "attributedStringWithAttachment:")[make_pointer_from_object attachment]) : [`NSAttributedString] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSAttributedString *)
class native_NSAttributedString = fun (o : [`NSAttributedString] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSAttributedStringAttachmentConveniences *)
end
(* Class object for NSMutableAttributedString *)
let class_NSMutableAttributedString = object
   val repr = Classes.find "NSMutableAttributedString"
   method _new = (Objc.objcnew repr : [`NSMutableAttributedString] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMutableAttributedString] nativeNSObject)
(* methods for category NSMutableAttributedStringAttachmentConveniences *)
end
(* Encapsulation for native instance of NSMutableAttributedString *)
class native_NSMutableAttributedString = fun (o : [`NSMutableAttributedString] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSMutableAttributedStringAttachmentConveniences *)
   method updateAttachmentsFromPath (path : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "updateAttachmentsFromPath:")[make_pointer_from_object path]) : unit)
end
