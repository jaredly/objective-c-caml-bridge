(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSBox] id) -> object
  inherit Cati_NSKeyboardUI.methods_NSBox
  inherit Im_NSBox.methods
  method repr = r
end

(* Class object for NSBox *)
let c = Classes.find "NSBox"
let _new()= (Objc.objcnew c : [`NSBox] id)
let alloc() = (Objc.objcalloc c : [`NSBox] id)
(* class methods for category NSKeyboardUI of NSBox *)
