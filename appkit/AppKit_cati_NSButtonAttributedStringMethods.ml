(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSButtonAttributedStringMethods of NSButton *)
class virtual methods_NSButton = object (self)
  method virtual repr : [`NSObject] Objc.id
  method attributedTitle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributedTitle")[])
       : [`NSAttributedString] Objc.id))
  method setAttributedTitle (aString : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributedTitle:")
      [make_pointer_from_object aString]) : unit)
  method attributedAlternateTitle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributedAlternateTitle")[])
       : [`NSAttributedString] Objc.id))
  method setAttributedAlternateTitle (obj : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributedAlternateTitle:")
      [make_pointer_from_object obj]) : unit)
end
