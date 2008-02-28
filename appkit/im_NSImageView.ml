(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSImageView *)
class virtual methods = object (self)
  method virtual repr : [`NSImageView] Objc.id
  method image =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "image")[])
       : [`NSImage] Objc.id))
  method setImage (newImage : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImage:")
      [make_pointer_from_object newImage]) : unit)
  method imageAlignment =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "imageAlignment")[])
       : int)
  method setImageAlignment (newAlign : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImageAlignment:")
      [make_int newAlign]) : unit)
  method imageScaling =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "imageScaling")[])
       : int)
  method setImageScaling (newScaling : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImageScaling:")
      [make_int newScaling]) : unit)
  method imageFrameStyle =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "imageFrameStyle")[])
       : int)
  method setImageFrameStyle (newStyle : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImageFrameStyle:")
      [make_int newStyle]) : unit)
  method setEditable (yn : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEditable:")
      [make_bool yn]) : unit)
  method isEditable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEditable")[])
       : bool)
  method setAnimates (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAnimates:")
      [make_bool flag]) : unit)
  method animates =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "animates")[])
       : bool)
  method allowsCutCopyPaste =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsCutCopyPaste")[])
       : bool)
  method setAllowsCutCopyPaste (allow : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsCutCopyPaste:")
      [make_bool allow]) : unit)
end
