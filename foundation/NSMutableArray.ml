(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMutableArray] id) -> object
  inherit Im_NSMutableArray.methods
  method repr = r
end

(* Class object for NSMutableArray *)
let c = Classes.find "NSMutableArray"
let _new()= (Objc.objcnew c : [`NSMutableArray] id)
let alloc() = (Objc.objcalloc c : [`NSMutableArray] id)
