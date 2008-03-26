(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSTextFieldAttributedStringMethods of NSTextField *)
class virtual methods_NSTextField = object (self)
  method virtual repr : [`NSObject] Objc.id
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
