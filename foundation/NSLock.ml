open Objc
open NSObject


external init : unit -> unit = "caml_init_NSLock"
let _ = init()
(* Class object for NSLock *)
let class_NSLock = object
   val o = Classes.find "NSLock"
   method _new = (Objc.objcnew o : [`NSLock] nativeNSObject)
end
(* Encapsulation for native instance of NSLock *)
class native_NSLock = fun (o : [`NSLock] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method tryLock =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "tryLock:")[]) : bool)
   method lockBeforeDate (limit : [`NSDate] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "lockBeforeDate:")[make_pointer_from_object limit]) : bool)
end
(* Class object for NSConditionLock *)
let class_NSConditionLock = object
   val o = Classes.find "NSConditionLock"
   method _new = (Objc.objcnew o : [`NSConditionLock] nativeNSObject)
end
(* Encapsulation for native instance of NSConditionLock *)
class native_NSConditionLock = fun (o : [`NSConditionLock] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithCondition (condition : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithCondition:")[make_int condition]) : [`NSObject] Objc.nativeNSObject)
   method condition =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "condition:")[]) : int)
   (* skipping selector lockWhenCondition *)
   method tryLock =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "tryLock:")[]) : bool)
   method tryLockWhenCondition (condition : int) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "tryLockWhenCondition:")[make_int condition]) : bool)
   method unlockWithCondition (condition : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "unlockWithCondition:")[make_int condition]) : unit)
   method lockBeforeDate (limit : [`NSDate] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "lockBeforeDate:")[make_pointer_from_object limit]) : bool)
   method lockWhenCondition  ?beforeDate:(limit : [`NSDate] Objc.t option) (condition : int) =
     let sel, args = (
       Objc.arg condition "lockWhenCondition" make_int
       ++ Objc.opt_arg limit "beforeDate" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
end
(* Class object for NSRecursiveLock *)
let class_NSRecursiveLock = object
   val o = Classes.find "NSRecursiveLock"
   method _new = (Objc.objcnew o : [`NSRecursiveLock] nativeNSObject)
end
(* Encapsulation for native instance of NSRecursiveLock *)
class native_NSRecursiveLock = fun (o : [`NSRecursiveLock] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method tryLock =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "tryLock:")[]) : bool)
   method lockBeforeDate (limit : [`NSDate] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "lockBeforeDate:")[make_pointer_from_object limit]) : bool)
end
