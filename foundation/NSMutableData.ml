(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMutableData] id) -> object
  inherit Im_NSMutableData.methods
  method repr = r
end

(* Class object for NSMutableData *)
let c = Classes.find "NSMutableData"
let _new()= (Objc.objcnew c : [`NSMutableData] id)
let alloc() = (Objc.objcalloc c : [`NSMutableData] id)
