(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSliderCell] id) -> object
  inherit Cati_NSTickMarkSupport.methods_NSSliderCell
  inherit Im_NSSliderCell.methods
  method repr = r
end

(* Class object for NSSliderCell *)
let c = Classes.find "NSSliderCell"
let _new()= (Objc.objcnew c : [`NSSliderCell] id)
let alloc() = (Objc.objcalloc c : [`NSSliderCell] id)
(* class methods for category NSTickMarkSupport of NSSliderCell *)
let prefersTrackingUntilMouseUp () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "prefersTrackingUntilMouseUp")[])
       : bool)
