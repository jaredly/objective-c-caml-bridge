(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSImageCell *)
class virtual methods = object (self)
  method virtual repr : [`NSImageCell] Objc.id
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
end
