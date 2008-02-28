(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSActionCell] id) -> object
  inherit Im_NSActionCell.methods
  method repr = r
end

(* Class object for NSActionCell *)
let c = Classes.find "NSActionCell"
let _new()= (Objc.objcnew c : [`NSActionCell] id)
let alloc() = (Objc.objcalloc c : [`NSActionCell] id)
