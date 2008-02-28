(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSCellAttributedStringMethods of NSCell *)
class virtual methods_NSCell = object (self)
  method virtual repr : [`NSCell] Objc.id
  method attributedStringValue =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributedStringValue")[])
       : [`NSAttributedString] Objc.id))
  method setAttributedStringValue (obj : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributedStringValue:")
      [make_pointer_from_object obj]) : unit)
  method allowsEditingTextAttributes =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsEditingTextAttributes")[])
       : bool)
  method setAllowsEditingTextAttributes (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsEditingTextAttributes:")
      [make_bool flag]) : unit)
  method importsGraphics =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "importsGraphics")[])
       : bool)
  method setImportsGraphics (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImportsGraphics:")
      [make_bool flag]) : unit)
end
