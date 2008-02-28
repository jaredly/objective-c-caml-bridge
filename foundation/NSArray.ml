(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSArray] id) -> object
  inherit Cati_NSArrayCreation.methods_NSArray
  inherit Cati_NSExtendedArray.methods_NSArray
  inherit Im_NSArray.methods
  method repr = r
end

(* Class object for NSArray *)
let c = Classes.find "NSArray"
let _new()= (Objc.objcnew c : [`NSArray] id)
let alloc() = (Objc.objcalloc c : [`NSArray] id)
(* class methods for category NSArrayCreation of NSArray *)
let array () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "array")[])
       : [`NSArray] Objc.id))
let arrayWithContentsOfFile (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "arrayWithContentsOfFile:")
      [make_pointer_from_object path]) : [`NSArray] Objc.id))
let arrayWithContentsOfURL (url : [`NSURL] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "arrayWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSArray] Objc.id))
let arrayWithObject (anObject : [`NSObject] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "arrayWithObject:")
      [make_pointer_from_object anObject]) : [`NSArray] Objc.id))
let arrayWithArray (array : [`NSArray] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "arrayWithArray:")
      [make_pointer_from_object array]) : [`NSArray] Objc.id))
let arrayWithObjects  ~count:(cnt : int ) (objs : [`id] Objc.t) =
    let sel, args = (
      Objc.arg objs "arrayWithObjects" make_pointer_from_object
      ++ Objc.arg cnt "count" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
(* class methods for category NSExtendedArray of NSArray *)
