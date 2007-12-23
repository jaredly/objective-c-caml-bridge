open Objc
open NSPredicate


external init : unit -> unit = "caml_init_NSCompoundPredicate"
let _ = init()
(* Class object for NSCompoundPredicate *)
let class_NSCompoundPredicate = object
   val o = Classes.find "NSCompoundPredicate"
   method _new = (Objc.objcnew o : [`NSCompoundPredicate] nativeNSObject)
   method andPredicateWithSubpredicates (subpredicates : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "andPredicateWithSubpredicates:")[make_pointer_from_object subpredicates]) : [`NSPredicate] Objc.nativeNSObject)
   method orPredicateWithSubpredicates (subpredicates : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "orPredicateWithSubpredicates:")[make_pointer_from_object subpredicates]) : [`NSPredicate] Objc.nativeNSObject)
   method notPredicateWithSubpredicate (predicate : [`NSPredicate] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "notPredicateWithSubpredicate:")[make_pointer_from_object predicate]) : [`NSPredicate] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSCompoundPredicate *)
class native_NSCompoundPredicate = fun (o : [`NSCompoundPredicate] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithType  ~subpredicates:(subpredicates : [`NSArray] Objc.t ) (_type : int) =
     let sel, args = (
       Objc.arg _type "initWithType" make_int
       ++ Objc.arg subpredicates "subpredicates" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method compoundPredicateType =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "compoundPredicateType:")[]) : int)
   method subpredicates =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "subpredicates:")[]) : [`NSArray] Objc.nativeNSObject)
end
