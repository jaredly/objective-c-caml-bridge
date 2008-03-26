(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSMutableSetCreation.methods_NSMutableSet
  inherit Foundation_cati_NSExtendedMutableSet.methods_NSMutableSet
  inherit Im_NSMutableSet.methods
end

class t = fun (r :[`NSMutableSet] id) -> object
  inherit methods
  inherit NSSet.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMutableSet *)
let c = Classes.find "NSMutableSet"
let _new()= (Objc.objcnew c : [`NSMutableSet] id)
let alloc() = (Objc.objcalloc c : [`NSMutableSet] id)
(* class methods for category NSMutableSetCreation of NSMutableSet *)
let setWithCapacity (numItems : int) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "setWithCapacity:")
      [make_int numItems]) : [`NSMutableSet] Objc.id))
(* class methods for category NSExtendedMutableSet of NSMutableSet *)
