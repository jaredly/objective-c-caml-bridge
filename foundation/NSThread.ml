(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSThread"
let _ = init()
let make_NSObject_of_NSThread (o : [`NSThread] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSThread *)
let class_NSThread = object
   val repr = Classes.find "NSThread"
   method _new = (Objc.objcnew repr : [`NSThread] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSThread] nativeNSObject)
   method currentThread =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "currentThread:")[]) : [`NSThread] Objc.nativeNSObject)
   method detachNewThreadSelector  ~toTarget:(target : [`NSObject] Objc.t ) ~withObject:(argument : [`NSObject] Objc.t ) (selector : selector) =
     let sel, args = (
       Objc.arg selector "detachNewThreadSelector" make_selector
       ++ Objc.arg target "toTarget" make_pointer_from_object
       ++ Objc.arg argument "withObject" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSThread] Objc.nativeNSObject)
   method isMultiThreaded =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "isMultiThreaded:")[]) : [`NSThread] Objc.nativeNSObject)
   method sleepUntilDate (date : [`NSDate] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sleepUntilDate:")[make_pointer_from_object date]) : [`NSThread] Objc.nativeNSObject)
   method exit =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "exit:")[]) : [`NSThread] Objc.nativeNSObject)
   method threadPriority =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "threadPriority:")[]) : [`NSThread] Objc.nativeNSObject)
   method setThreadPriority (priority : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setThreadPriority:")[make_float priority]) : [`NSThread] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSThread *)
class native_NSThread = fun (o : [`NSThread] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSThread o) as super
   method threadDictionary =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "threadDictionary:")[]) : [`NSMutableDictionary] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSMainThreadPerformAdditions *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSMainThreadPerformAdditions *)
   method performSelectorOnMainThread  ~withObject:(arg : [`NSObject] Objc.t ) ~waitUntilDone:(wait : bool ) ?modes:(array : [`NSArray] Objc.t option) (aSelector : selector) =
     let sel, args = (
       Objc.arg aSelector "performSelectorOnMainThread" make_selector
       ++ Objc.arg arg "withObject" make_pointer_from_object
       ++ Objc.arg wait "waitUntilDone" make_bool
       ++ Objc.opt_arg array "modes" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector performSelectorOnMainThread:withObject:waitUntilDone *)
end
