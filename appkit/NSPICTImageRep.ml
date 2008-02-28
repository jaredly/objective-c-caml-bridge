(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPICTImageRep] id) -> object
  inherit Im_NSPICTImageRep.methods
  method repr = r
end

(* Class object for NSPICTImageRep *)
let c = Classes.find "NSPICTImageRep"
let _new()= (Objc.objcnew c : [`NSPICTImageRep] id)
let alloc() = (Objc.objcalloc c : [`NSPICTImageRep] id)
let imageRepWithData (pictData : [`NSData] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepWithData:")
      [make_pointer_from_object pictData]) : [`NSPICTImageRep] Objc.id))
