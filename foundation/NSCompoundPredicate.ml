(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSCompoundPredicate.methods
end

class t = fun (r :[`NSCompoundPredicate] id) -> object
  inherit methods
  inherit NSPredicate.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCompoundPredicate *)
let c = Classes.find "NSCompoundPredicate"
let _new()= (Objc.objcnew c : [`NSCompoundPredicate] id)
let alloc() = (Objc.objcalloc c : [`NSCompoundPredicate] id)
let andPredicateWithSubpredicates (subpredicates : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "andPredicateWithSubpredicates:")
      [make_pointer_from_object subpredicates]) : [`NSPredicate] Objc.id))
let orPredicateWithSubpredicates (subpredicates : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "orPredicateWithSubpredicates:")
      [make_pointer_from_object subpredicates]) : [`NSPredicate] Objc.id))
let notPredicateWithSubpredicate (predicate : [`NSPredicate] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "notPredicateWithSubpredicate:")
      [make_pointer_from_object predicate]) : [`NSPredicate] Objc.id))
