(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPICTImageRep.methods
end

class t = fun (r :[`NSPICTImageRep] id) -> object
  inherit methods
  inherit NSImageRep.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPICTImageRep *)
let c = Classes.find "NSPICTImageRep"
let _new()= (Objc.objcnew c : [`NSPICTImageRep] id)
let alloc() = (Objc.objcalloc c : [`NSPICTImageRep] id)
let imageRepWithData (pictData : [`NSData] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepWithData:")
      [make_pointer_from_object pictData]) : [`NSPICTImageRep] Objc.id))
