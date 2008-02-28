(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSimpleCString] id) -> object
  inherit Im_NSSimpleCString.methods
  method repr = r
end

(* Class object for NSSimpleCString *)
let c = Classes.find "NSSimpleCString"
let _new()= (Objc.objcnew c : [`NSSimpleCString] id)
let alloc() = (Objc.objcalloc c : [`NSSimpleCString] id)
