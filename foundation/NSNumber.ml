(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSNumber] id) -> object
  inherit Im_NSNumber.methods
  method repr = r
end

(* Class object for NSNumber *)
let c = Classes.find "NSNumber"
let _new()= (Objc.objcnew c : [`NSNumber] id)
let alloc() = (Objc.objcalloc c : [`NSNumber] id)
