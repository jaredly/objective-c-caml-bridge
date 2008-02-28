(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMatrix] id) -> object
  inherit Cati_NSKeyboardUI.methods_NSMatrix
  inherit Im_NSMatrix.methods
  method repr = r
end

(* Class object for NSMatrix *)
let c = Classes.find "NSMatrix"
let _new()= (Objc.objcnew c : [`NSMatrix] id)
let alloc() = (Objc.objcalloc c : [`NSMatrix] id)
(* class methods for category NSKeyboardUI of NSMatrix *)
