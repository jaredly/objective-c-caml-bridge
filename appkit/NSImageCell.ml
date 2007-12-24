(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSCell


external init : unit -> unit = "caml_init_NSImageCell"
let _ = init()
let make_NSCell_of_NSImageCell (o : [`NSImageCell] nativeNSObject) = (Obj.magic o : [`NSCell] nativeNSObject)
(* Class object for NSImageCell *)
let class_NSImageCell = object
   val repr = Classes.find "NSImageCell"
   method _new = (Objc.objcnew repr : [`NSImageCell] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSImageCell] nativeNSObject)
end
(* Encapsulation for native instance of NSImageCell *)
class native_NSImageCell = fun (o : [`NSImageCell] nativeNSObject) -> object (self)
   inherit native_NSCell (make_NSCell_of_NSImageCell o) as super
   method imageAlignment =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "imageAlignment:")[]) : int)
   method setImageAlignment (newAlign : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImageAlignment:")[make_int newAlign]) : unit)
   method imageScaling =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "imageScaling:")[]) : int)
   method setImageScaling (newScaling : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImageScaling:")[make_int newScaling]) : unit)
   method imageFrameStyle =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "imageFrameStyle:")[]) : int)
   method setImageFrameStyle (newStyle : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImageFrameStyle:")[make_int newStyle]) : unit)
end
