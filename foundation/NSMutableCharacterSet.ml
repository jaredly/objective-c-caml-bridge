(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMutableCharacterSet] id) -> object
  inherit Im_NSMutableCharacterSet.methods
  method repr = r
end

(* Class object for NSMutableCharacterSet *)
let c = Classes.find "NSMutableCharacterSet"
let _new()= (Objc.objcnew c : [`NSMutableCharacterSet] id)
let alloc() = (Objc.objcalloc c : [`NSMutableCharacterSet] id)
