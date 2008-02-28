(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSAffineTransform] id) -> object
  inherit Im_NSAffineTransform.methods
  method repr = r
end

(* Class object for NSAffineTransform *)
let c = Classes.find "NSAffineTransform"
let _new()= (Objc.objcnew c : [`NSAffineTransform] id)
let alloc() = (Objc.objcalloc c : [`NSAffineTransform] id)
let transform () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "transform")[])
       : [`NSAffineTransform] Objc.id))
