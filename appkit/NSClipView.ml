(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSClipView] id) -> object
  inherit Im_NSClipView.methods
  method repr = r
end

(* Class object for NSClipView *)
let c = Classes.find "NSClipView"
let _new()= (Objc.objcnew c : [`NSClipView] id)
let alloc() = (Objc.objcalloc c : [`NSClipView] id)
