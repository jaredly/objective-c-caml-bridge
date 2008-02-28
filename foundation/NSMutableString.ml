(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMutableString] id) -> object
  inherit Im_NSMutableString.methods
  method repr = r
end

(* Class object for NSMutableString *)
let c = Classes.find "NSMutableString"
let _new()= (Objc.objcnew c : [`NSMutableString] id)
let alloc() = (Objc.objcalloc c : [`NSMutableString] id)
