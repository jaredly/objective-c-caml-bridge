(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSCustomImageRep] id) -> object
  inherit Im_NSCustomImageRep.methods
  method repr = r
end

(* Class object for NSCustomImageRep *)
let c = Classes.find "NSCustomImageRep"
let _new()= (Objc.objcnew c : [`NSCustomImageRep] id)
let alloc() = (Objc.objcalloc c : [`NSCustomImageRep] id)
