(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSFormCellAttributedStringMethods of NSFormCell *)
class virtual methods_NSFormCell = object (self)
  method virtual repr : [`NSFormCell] Objc.id
  method attributedTitle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributedTitle")[])
       : [`NSAttributedString] Objc.id))
  method setAttributedTitle (obj : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributedTitle:")
      [make_pointer_from_object obj]) : unit)
end
