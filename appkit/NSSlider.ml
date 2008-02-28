(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSlider] id) -> object
  inherit Cati_NSTickMarkSupport.methods_NSSlider
  inherit Im_NSSlider.methods
  method repr = r
end

(* Class object for NSSlider *)
let c = Classes.find "NSSlider"
let _new()= (Objc.objcnew c : [`NSSlider] id)
let alloc() = (Objc.objcalloc c : [`NSSlider] id)
(* class methods for category NSTickMarkSupport of NSSlider *)
