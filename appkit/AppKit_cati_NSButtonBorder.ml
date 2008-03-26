(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSButtonBorder of NSButton *)
class virtual methods_NSButton = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setShowsBorderOnlyWhileMouseInside (show : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShowsBorderOnlyWhileMouseInside:")
      [make_bool show]) : unit)
  method showsBorderOnlyWhileMouseInside =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "showsBorderOnlyWhileMouseInside")[])
       : bool)
end
