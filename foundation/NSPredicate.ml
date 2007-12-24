(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSArray


external init : unit -> unit = "caml_init_NSPredicate"
let _ = init()
let make_NSObject_of_NSPredicate (o : [`NSPredicate] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSPredicate *)
let class_NSPredicate = object
   val repr = Classes.find "NSPredicate"
   method _new = (Objc.objcnew repr : [`NSPredicate] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPredicate] nativeNSObject)
   method predicateWithFormat  ?argumentArray:(arguments : [`NSArray] Objc.t option) (predicateFormat : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg predicateFormat "predicateWithFormat" make_pointer_from_object
       ++ Objc.opt_arg arguments "argumentArray" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSPredicate] Objc.nativeNSObject)
   (* skipping selector predicateWithFormat:arguments *)
   method predicateWithValue (value : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "predicateWithValue:")[make_bool value]) : [`NSPredicate] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPredicate *)
class native_NSPredicate = fun (o : [`NSPredicate] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSPredicate o) as super
   method predicateWithSubstitutionVariables (variables : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "predicateWithSubstitutionVariables:")[make_pointer_from_object variables]) : [`NSPredicate] Objc.nativeNSObject)
   method evaluateWithObject (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "evaluateWithObject:")[make_pointer_from_object _object]) : bool)
   method predicateFormat =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "predicateFormat:")[]) : [`NSString] Objc.nativeNSObject)
end
(* Class object for NSArray *)
let class_NSArray = object
   val repr = Classes.find "NSArray"
   method _new = (Objc.objcnew repr : [`NSArray] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSArray] nativeNSObject)
(* methods for category NSPredicateSupport *)
end
(* Encapsulation for native instance of NSArray *)
class native_NSArray = fun (o : [`NSArray] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSPredicateSupport *)
   method filteredArrayUsingPredicate (predicate : [`NSPredicate] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "filteredArrayUsingPredicate:")[make_pointer_from_object predicate]) : [`NSArray] Objc.nativeNSObject)
end
(* Class object for NSMutableArray *)
let class_NSMutableArray = object
   val repr = Classes.find "NSMutableArray"
   method _new = (Objc.objcnew repr : [`NSMutableArray] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMutableArray] nativeNSObject)
(* methods for category NSPredicateSupport *)
end
(* Encapsulation for native instance of NSMutableArray *)
class native_NSMutableArray = fun (o : [`NSMutableArray] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSPredicateSupport *)
   method filterUsingPredicate (predicate : [`NSPredicate] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "filterUsingPredicate:")[make_pointer_from_object predicate]) : unit)
end
