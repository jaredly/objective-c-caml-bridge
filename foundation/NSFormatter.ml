(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSFormatter] id) -> object
  inherit Im_NSFormatter.methods
  method repr = r
end

(* Class object for NSFormatter *)
let c = Classes.find "NSFormatter"
let _new()= (Objc.objcnew c : [`NSFormatter] id)
let alloc() = (Objc.objcalloc c : [`NSFormatter] id)
