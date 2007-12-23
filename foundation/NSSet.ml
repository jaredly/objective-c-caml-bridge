open Objc
open NSObject


external init : unit -> unit = "caml_init_NSSet"
let _ = init()
(* Class object for NSCountedSet *)
let class_NSCountedSet = object
   val o = Classes.find "NSCountedSet"
   method _new = (Objc.objcnew o : [`NSCountedSet] nativeNSObject)
end
(* Encapsulation for native instance of NSCountedSet *)
class native_NSCountedSet = fun (o : [`NSCountedSet] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithCapacity (numItems : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithCapacity:")[make_int numItems]) : [`NSObject] Objc.nativeNSObject)
   method initWithArray (array : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithArray:")[make_pointer_from_object array]) : [`NSObject] Objc.nativeNSObject)
   method initWithSet (set : [`NSSet] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithSet:")[make_pointer_from_object set]) : [`NSObject] Objc.nativeNSObject)
   method countForObject (_object : [`NSObject] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "countForObject:")[make_pointer_from_object _object]) : int)
   method objectEnumerator =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "objectEnumerator:")[]) : [`NSEnumerator] Objc.nativeNSObject)
   method addObject (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addObject:")[make_pointer_from_object _object]) : unit)
   method removeObject (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeObject:")[make_pointer_from_object _object]) : unit)
end
(* Class object for NSMutableSet *)
let class_NSMutableSet = object
   val o = Classes.find "NSMutableSet"
   method _new = (Objc.objcnew o : [`NSMutableSet] nativeNSObject)
(* methods for category NSMutableSetCreation *)
   method setWithCapacity (numItems : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setWithCapacity:")[make_int numItems]) : [`NSMutableSet] Objc.nativeNSObject)
(* methods for category NSExtendedMutableSet *)
end
(* Encapsulation for native instance of NSMutableSet *)
class native_NSMutableSet = fun (o : [`NSMutableSet] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSMutableSetCreation *)
   method initWithCapacity (numItems : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithCapacity:")[make_int numItems]) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSExtendedMutableSet *)
   method addObjectsFromArray (array : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addObjectsFromArray:")[make_pointer_from_object array]) : unit)
   method intersectSet (otherSet : [`NSSet] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "intersectSet:")[make_pointer_from_object otherSet]) : unit)
   method minusSet (otherSet : [`NSSet] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "minusSet:")[make_pointer_from_object otherSet]) : unit)
   method removeAllObjects =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeAllObjects:")[]) : unit)
   method unionSet (otherSet : [`NSSet] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "unionSet:")[make_pointer_from_object otherSet]) : unit)
   method setSet (otherSet : [`NSSet] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSet:")[make_pointer_from_object otherSet]) : unit)
   method addObject (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addObject:")[make_pointer_from_object _object]) : unit)
   method removeObject (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeObject:")[make_pointer_from_object _object]) : unit)
end
(* Class object for NSSet *)
let class_NSSet = object
   val o = Classes.find "NSSet"
   method _new = (Objc.objcnew o : [`NSSet] nativeNSObject)
(* methods for category NSSetCreation *)
   method set =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "set:")[]) : [`NSSet] Objc.nativeNSObject)
   method setWithArray (array : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setWithArray:")[make_pointer_from_object array]) : [`NSSet] Objc.nativeNSObject)
   method setWithObject (_object : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setWithObject:")[make_pointer_from_object _object]) : [`NSSet] Objc.nativeNSObject)
   method setWithSet (set : [`NSSet] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setWithSet:")[make_pointer_from_object set]) : [`NSSet] Objc.nativeNSObject)
   method setWithObjects  ~count:(cnt : int ) (objs : [`id] Objc.t) =
     let sel, args = (
       Objc.arg objs "setWithObjects" make_pointer_from_object
       ++ Objc.arg cnt "count" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSSet] Objc.nativeNSObject)
(* methods for category NSExtendedSet *)
end
(* Encapsulation for native instance of NSSet *)
class native_NSSet = fun (o : [`NSSet] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSSetCreation *)
   method initWithArray (array : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithArray:")[make_pointer_from_object array]) : [`NSObject] Objc.nativeNSObject)
   method initWithObjects  ~count:(count : int ) (objects : [`id] Objc.t) =
     let sel, args = (
       Objc.arg objects "initWithObjects" make_pointer_from_object
       ++ Objc.arg count "count" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithSet *)
   method initWithSet  ?copyItems:(flag : bool option) (set : [`NSSet] Objc.t) =
     let sel, args = (
       Objc.arg set "initWithSet" make_pointer_from_object
       ++ Objc.opt_arg flag "copyItems" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSExtendedSet *)
   method allObjects =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "allObjects:")[]) : [`NSArray] Objc.nativeNSObject)
   method anyObject =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "anyObject:")[]) : [`NSObject] Objc.nativeNSObject)
   method containsObject (anObject : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "containsObject:")[make_pointer_from_object anObject]) : bool)
   method description =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "description:")[]) : [`NSString] Objc.nativeNSObject)
   method descriptionWithLocale (locale : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "descriptionWithLocale:")[make_pointer_from_object locale]) : [`NSString] Objc.nativeNSObject)
   method intersectsSet (otherSet : [`NSSet] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "intersectsSet:")[make_pointer_from_object otherSet]) : bool)
   method isEqualToSet (otherSet : [`NSSet] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEqualToSet:")[make_pointer_from_object otherSet]) : bool)
   method isSubsetOfSet (otherSet : [`NSSet] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isSubsetOfSet:")[make_pointer_from_object otherSet]) : bool)
   (* skipping selector makeObjectsPerformSelector *)
   method makeObjectsPerformSelector  ?withObject:(argument : [`NSObject] Objc.t option) (aSelector : selector) =
     let sel, args = (
       Objc.arg aSelector "makeObjectsPerformSelector" make_selector
       ++ Objc.opt_arg argument "withObject" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method count =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "count:")[]) : int)
   method member (_object : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "member:")[make_pointer_from_object _object]) : [`NSObject] Objc.nativeNSObject)
   method objectEnumerator =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "objectEnumerator:")[]) : [`NSEnumerator] Objc.nativeNSObject)
end
