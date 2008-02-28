(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSFontPanel *)
class virtual methods = object (self)
  method virtual repr : [`NSFontPanel] Objc.id
  method accessoryView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "accessoryView")[])
       : [`NSView] Objc.id))
  method setAccessoryView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAccessoryView:")
      [make_pointer_from_object aView]) : unit)
  method setPanelFont  ~isMultiple:(flag : bool ) (fontObj : [`NSFont] Objc.t) =
    let sel, args = (
      Objc.arg fontObj "setPanelFont" make_pointer_from_object
      ++ Objc.arg flag "isMultiple" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method panelConvertFont (fontObj : [`NSFont] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "panelConvertFont:")
      [make_pointer_from_object fontObj]) : [`NSFont] Objc.id))
  method worksWhenModal =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "worksWhenModal")[])
       : bool)
  method isEnabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEnabled")[])
       : bool)
  method setEnabled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEnabled:")
      [make_bool flag]) : unit)
  method reloadDefaultFontFamilies =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "reloadDefaultFontFamilies")[])
       : unit)
end
