(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCompoundPredicate *)
class virtual methods = object (self)
  method virtual repr : [`NSCompoundPredicate] Objc.id
  method initWithType  ~subpredicates:(subpredicates : [`NSArray] Objc.t ) (_type : int) =
    let sel, args = (
      Objc.arg _type "initWithType" make_int
      ++ Objc.arg subpredicates "subpredicates" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method compoundPredicateType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "compoundPredicateType")[])
       : int)
  method subpredicates =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "subpredicates")[])
       : [`NSArray] Objc.id))
end
