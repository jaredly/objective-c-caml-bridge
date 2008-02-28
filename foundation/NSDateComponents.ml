(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSDateComponents] id) -> object
  inherit Im_NSDateComponents.methods
  method repr = r
end

(* Class object for NSDateComponents *)
let c = Classes.find "NSDateComponents"
let _new()= (Objc.objcnew c : [`NSDateComponents] id)
let alloc() = (Objc.objcalloc c : [`NSDateComponents] id)
