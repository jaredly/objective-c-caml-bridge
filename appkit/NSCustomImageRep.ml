(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSCustomImageRep.methods
end

class t = fun (r :[`NSCustomImageRep] id) -> object
  inherit methods
  inherit NSImageRep.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCustomImageRep *)
let c = Classes.find "NSCustomImageRep"
let _new()= (Objc.objcnew c : [`NSCustomImageRep] id)
let alloc() = (Objc.objcalloc c : [`NSCustomImageRep] id)
