open Objc
open NSCell


external init : unit -> unit = "caml_init_NSImageCell"
let _ = init()
(* Class object for NSImageCell *)
let class_NSImageCell = object
   val o = Classes.find "NSImageCell"
   method _new = (Objc.objcnew o : [`NSImageCell] nativeNSObject)
end
(* Encapsulation for native instance of NSImageCell *)
class native_NSImageCell = fun (o : [`NSImageCell] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method imageAlignment =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "imageAlignment:")[]) : int)
   method setImageAlignment (newAlign : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setImageAlignment:")[make_int newAlign]) : unit)
   method imageScaling =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "imageScaling:")[]) : int)
   method setImageScaling (newScaling : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setImageScaling:")[make_int newScaling]) : unit)
   method imageFrameStyle =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "imageFrameStyle:")[]) : int)
   method setImageFrameStyle (newStyle : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setImageFrameStyle:")[make_int newStyle]) : unit)
end
