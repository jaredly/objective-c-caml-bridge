(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSEPSImageRep.methods
end

class t = fun (r :[`NSEPSImageRep] id) -> object
  inherit methods
  inherit NSImageRep.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSEPSImageRep *)
let c = Classes.find "NSEPSImageRep"
let _new()= (Objc.objcnew c : [`NSEPSImageRep] id)
let alloc() = (Objc.objcalloc c : [`NSEPSImageRep] id)
let imageRepWithData (epsData : [`NSData] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepWithData:")
      [make_pointer_from_object epsData]) : [`NSEPSImageRep] Objc.id))
