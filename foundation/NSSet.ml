(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSSetCreation.methods_NSSet
  inherit Foundation_cati_NSExtendedSet.methods_NSSet
  inherit Im_NSSet.methods
  inherit Foundation_cati_NSKeyValueObserverRegistration.methods_NSSet
  inherit Foundation_cati_NSKeyValueCoding.methods_NSSet
end

class t = fun (r :[`NSSet] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSet *)
let c = Classes.find "NSSet"
let _new()= (Objc.objcnew c : [`NSSet] id)
let alloc() = (Objc.objcalloc c : [`NSSet] id)
(* class methods for category NSSetCreation of NSSet *)
let set () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "set")[])
       : [`NSSet] Objc.id))
let setWithArray (array : [`NSArray] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "setWithArray:")
      [make_pointer_from_object array]) : [`NSSet] Objc.id))
let setWithObject (_object : [`NSObject] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "setWithObject:")
      [make_pointer_from_object _object]) : [`NSSet] Objc.id))
let setWithSet (set : [`NSSet] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "setWithSet:")
      [make_pointer_from_object set]) : [`NSSet] Objc.id))
let setWithObjects_count  (objs : [`id] Objc.t) (cnt : int) =
    let sel, args = (
      Objc.arg objs "setWithObjects" make_pointer_from_object
      ++ Objc.arg cnt "count" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSSet] Objc.id))
(* class methods for category NSExtendedSet of NSSet *)
(* class methods for category NSKeyValueObserverRegistration of NSSet *)
(* class methods for category NSKeyValueCoding of NSSet *)
