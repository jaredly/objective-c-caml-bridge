(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMutableDictionary] id) -> object
  inherit Im_NSMutableDictionary.methods
  method repr = r
end

(* Class object for NSMutableDictionary *)
let c = Classes.find "NSMutableDictionary"
let _new()= (Objc.objcnew c : [`NSMutableDictionary] id)
let alloc() = (Objc.objcalloc c : [`NSMutableDictionary] id)
