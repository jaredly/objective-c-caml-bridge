(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSCachedImageRep] id) -> object
  inherit Im_NSCachedImageRep.methods
  method repr = r
end

(* Class object for NSCachedImageRep *)
let c = Classes.find "NSCachedImageRep"
let _new()= (Objc.objcnew c : [`NSCachedImageRep] id)
let alloc() = (Objc.objcalloc c : [`NSCachedImageRep] id)
