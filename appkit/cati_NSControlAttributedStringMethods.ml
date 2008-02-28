(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSControlAttributedStringMethods of NSControl *)
class virtual methods_NSControl = object (self)
  method virtual repr : [`NSControl] Objc.id
  method attributedStringValue =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributedStringValue")[])
       : [`NSAttributedString] Objc.id))
  method setAttributedStringValue (obj : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributedStringValue:")
      [make_pointer_from_object obj]) : unit)
end
