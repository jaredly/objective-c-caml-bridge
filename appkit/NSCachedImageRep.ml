(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSCachedImageRep.methods
end

class t = fun (r :[`NSCachedImageRep] id) -> object
  inherit methods
  inherit NSImageRep.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCachedImageRep *)
let c = Classes.find "NSCachedImageRep"
let _new()= (Objc.objcnew c : [`NSCachedImageRep] id)
let alloc() = (Objc.objcalloc c : [`NSCachedImageRep] id)
