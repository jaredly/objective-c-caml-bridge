(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSLock"
let _ = init()
let make_NSObject_of_NSLock (o : [`NSLock] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSLock *)
let class_NSLock = object
   val repr = Classes.find "NSLock"
   method _new = (Objc.objcnew repr : [`NSLock] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSLock] nativeNSObject)
end
(* Encapsulation for native instance of NSLock *)
class native_NSLock = fun (o : [`NSLock] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSLock o) as super
   method tryLock =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "tryLock:")[]) : bool)
   method lockBeforeDate (limit : [`NSDate] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "lockBeforeDate:")[make_pointer_from_object limit]) : bool)
end
let make_NSObject_of_NSConditionLock (o : [`NSConditionLock] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSConditionLock *)
let class_NSConditionLock = object
   val repr = Classes.find "NSConditionLock"
   method _new = (Objc.objcnew repr : [`NSConditionLock] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSConditionLock] nativeNSObject)
end
(* Encapsulation for native instance of NSConditionLock *)
class native_NSConditionLock = fun (o : [`NSConditionLock] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSConditionLock o) as super
   method initWithCondition (condition : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithCondition:")[make_int condition]) : [`NSObject] Objc.nativeNSObject)
   method condition =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "condition:")[]) : int)
   (* skipping selector lockWhenCondition *)
   method tryLock =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "tryLock:")[]) : bool)
   method tryLockWhenCondition (condition : int) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "tryLockWhenCondition:")[make_int condition]) : bool)
   method unlockWithCondition (condition : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "unlockWithCondition:")[make_int condition]) : unit)
   method lockBeforeDate (limit : [`NSDate] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "lockBeforeDate:")[make_pointer_from_object limit]) : bool)
   method lockWhenCondition  ?beforeDate:(limit : [`NSDate] Objc.t option) (condition : int) =
     let sel, args = (
       Objc.arg condition "lockWhenCondition" make_int
       ++ Objc.opt_arg limit "beforeDate" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
end
let make_NSObject_of_NSRecursiveLock (o : [`NSRecursiveLock] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSRecursiveLock *)
let class_NSRecursiveLock = object
   val repr = Classes.find "NSRecursiveLock"
   method _new = (Objc.objcnew repr : [`NSRecursiveLock] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSRecursiveLock] nativeNSObject)
end
(* Encapsulation for native instance of NSRecursiveLock *)
class native_NSRecursiveLock = fun (o : [`NSRecursiveLock] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSRecursiveLock o) as super
   method tryLock =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "tryLock:")[]) : bool)
   method lockBeforeDate (limit : [`NSDate] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "lockBeforeDate:")[make_pointer_from_object limit]) : bool)
end
