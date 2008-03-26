(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextAttachment *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithFileWrapper (fileWrapper : [`NSFileWrapper] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithFileWrapper:")
      [make_pointer_from_object fileWrapper]) : [`NSObject] Objc.id)
  method setFileWrapper (fileWrapper : [`NSFileWrapper] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFileWrapper:")
      [make_pointer_from_object fileWrapper]) : unit)
  method fileWrapper =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileWrapper")[])
       : [`NSFileWrapper] Objc.id))
  method attachmentCell =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attachmentCell")[])
       : [`NSObject] Objc.id)
  method setAttachmentCell (cell : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttachmentCell:")
      [make_pointer_from_object cell]) : unit)
end
