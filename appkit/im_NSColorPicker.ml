(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSColorPicker *)
class virtual methods = object (self)
  method virtual repr : [`NSColorPicker] Objc.id
  method initWithPickerMask  ~colorPanel:(owningColorPanel : [`NSColorPanel] Objc.t ) (mask : int) =
    let sel, args = (
      Objc.arg mask "initWithPickerMask" make_int
      ++ Objc.arg owningColorPanel "colorPanel" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method colorPanel =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "colorPanel")[])
       : [`NSColorPanel] Objc.id))
  method provideNewButtonImage =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "provideNewButtonImage")[])
       : [`NSImage] Objc.id))
  method insertNewButtonImage  ~l_in:(buttonCell : [`NSButtonCell] Objc.t ) (newButtonImage : [`NSImage] Objc.t) =
    let sel, args = (
      Objc.arg newButtonImage "insertNewButtonImage" make_pointer_from_object
      ++ Objc.arg buttonCell "l_in" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method viewSizeChanged (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "viewSizeChanged:")
      [make_pointer_from_object sender]) : unit)
  method attachColorList (colorList : [`NSColorList] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "attachColorList:")
      [make_pointer_from_object colorList]) : unit)
  method detachColorList (colorList : [`NSColorList] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "detachColorList:")
      [make_pointer_from_object colorList]) : unit)
  method setMode (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMode:")
      [make_int mode]) : unit)
end
