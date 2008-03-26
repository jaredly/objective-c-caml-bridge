(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSCIImageRep.methods
end

class t = fun (r :[`NSCIImageRep] id) -> object
  inherit methods
  inherit NSImageRep.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCIImageRep *)
let c = Classes.find "NSCIImageRep"
let _new()= (Objc.objcnew c : [`NSCIImageRep] id)
let alloc() = (Objc.objcalloc c : [`NSCIImageRep] id)
let imageRepWithCIImage (image : [`CIImage] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepWithCIImage:")
      [make_pointer_from_object image]) : [`NSCIImageRep] Objc.id))
