(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSSortDescriptorSorting.methods_NSMutableArray
  inherit Foundation_cati_NSPredicateSupport.methods_NSMutableArray
  inherit Foundation_cati_NSMutableArrayCreation.methods_NSMutableArray
  inherit Foundation_cati_NSExtendedMutableArray.methods_NSMutableArray
  inherit Im_NSMutableArray.methods
end

class t = fun (r :[`NSMutableArray] id) -> object
  inherit methods
  inherit NSArray.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMutableArray *)
let c = Classes.find "NSMutableArray"
let _new()= (Objc.objcnew c : [`NSMutableArray] id)
let alloc() = (Objc.objcalloc c : [`NSMutableArray] id)
(* class methods for category NSSortDescriptorSorting of NSMutableArray *)
(* class methods for category NSPredicateSupport of NSMutableArray *)
(* class methods for category NSMutableArrayCreation of NSMutableArray *)
let arrayWithCapacity (numItems : int) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "arrayWithCapacity:")
      [make_int numItems]) : [`NSMutableArray] Objc.id))
(* class methods for category NSExtendedMutableArray of NSMutableArray *)
