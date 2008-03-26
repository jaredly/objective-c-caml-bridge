(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSButtonCellExtensions of NSButtonCell *)
class virtual methods_NSButtonCell = object (self)
  method virtual repr : [`NSObject] Objc.id
  method gradientType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "gradientType")[])
       : int)
  method setGradientType (_type : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setGradientType:")
      [make_int _type]) : unit)
  method setImageDimsWhenDisabled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImageDimsWhenDisabled:")
      [make_bool flag]) : unit)
  method imageDimsWhenDisabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "imageDimsWhenDisabled")[])
       : bool)
  method setShowsBorderOnlyWhileMouseInside (show : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShowsBorderOnlyWhileMouseInside:")
      [make_bool show]) : unit)
  method showsBorderOnlyWhileMouseInside =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "showsBorderOnlyWhileMouseInside")[])
       : bool)
  method mouseEntered (event : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "mouseEntered:")
      [make_pointer_from_object event]) : unit)
  method mouseExited (event : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "mouseExited:")
      [make_pointer_from_object event]) : unit)
  method backgroundColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "backgroundColor")[])
       : [`NSColor] Objc.id))
  method setBackgroundColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBackgroundColor:")
      [make_pointer_from_object color]) : unit)
end
