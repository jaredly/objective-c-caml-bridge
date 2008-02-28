(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSColorPanel *)
class virtual methods = object (self)
  method virtual repr : [`NSColorPanel] Objc.id
  method setAccessoryView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAccessoryView:")
      [make_pointer_from_object aView]) : unit)
  method accessoryView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "accessoryView")[])
       : [`NSView] Objc.id))
  method setContinuous (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContinuous:")
      [make_bool flag]) : unit)
  method isContinuous =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isContinuous")[])
       : bool)
  method setShowsAlpha (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShowsAlpha:")
      [make_bool flag]) : unit)
  method showsAlpha =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "showsAlpha")[])
       : bool)
  method setMode (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMode:")
      [make_int mode]) : unit)
  method mode =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "mode")[])
       : int)
  method setColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setColor:")
      [make_pointer_from_object color]) : unit)
  method color =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "color")[])
       : [`NSColor] Objc.id))
  method alpha =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "alpha")[])
       : float)
  method setAction (aSelector : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAction:")
      [make_selector aSelector]) : unit)
  method setTarget (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTarget:")
      [make_pointer_from_object anObject]) : unit)
  method attachColorList (colorList : [`NSColorList] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "attachColorList:")
      [make_pointer_from_object colorList]) : unit)
  method detachColorList (colorList : [`NSColorList] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "detachColorList:")
      [make_pointer_from_object colorList]) : unit)
end
