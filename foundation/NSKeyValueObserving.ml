(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSArray
open NSSet


external init : unit -> unit = "caml_init_NSKeyValueObserving"
let _ = init()
(* ENUMS *)
let _NSKeyValueObservingOptionNew = 1L
let _NSKeyValueObservingOptionOld = 2L


(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSKeyValueObservingCustomization *)
   method automaticallyNotifiesObserversForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "automaticallyNotifiesObserversForKey:")[make_pointer_from_object key]) : [`NSObject] Objc.nativeNSObject)
   method setKeys  ~triggerChangeNotificationsForDependentKey:(dependentKey : [`NSString] Objc.t ) (keys : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg keys "setKeys" make_pointer_from_object
       ++ Objc.arg dependentKey "triggerChangeNotificationsForDependentKey" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSKeyValueObserverNotification *)
(* methods for category NSKeyValueObserverRegistration *)
(* methods for category NSKeyValueObserving *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSKeyValueObservingCustomization *)
   method setObservationInfo (observationInfo : [`void] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setObservationInfo:")[make_pointer_from_object observationInfo]) : unit)
   method observationInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "observationInfo:")[]) : [`void] Objc.nativeNSObject)
(* methods for category NSKeyValueObserverNotification *)
   (* skipping selector willChangeValueForKey *)
   (* skipping selector didChangeValueForKey *)
   method willChange  ~valuesAtIndexes:(indexes : [`NSIndexSet] Objc.t ) ~forKey:(key : [`NSString] Objc.t ) (changeKind : int) =
     let sel, args = (
       Objc.arg changeKind "willChange" make_int
       ++ Objc.arg indexes "valuesAtIndexes" make_pointer_from_object
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method didChange  ~valuesAtIndexes:(indexes : [`NSIndexSet] Objc.t ) ~forKey:(key : [`NSString] Objc.t ) (changeKind : int) =
     let sel, args = (
       Objc.arg changeKind "didChange" make_int
       ++ Objc.arg indexes "valuesAtIndexes" make_pointer_from_object
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method willChangeValueForKey  ?withSetMutation:(mutationKind : int option) ?usingObjects:(objects : [`NSSet] Objc.t option) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "willChangeValueForKey" make_pointer_from_object
       ++ Objc.opt_arg mutationKind "withSetMutation" make_int
       ++ Objc.opt_arg objects "usingObjects" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method didChangeValueForKey  ?withSetMutation:(mutationKind : int option) ?usingObjects:(objects : [`NSSet] Objc.t option) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "didChangeValueForKey" make_pointer_from_object
       ++ Objc.opt_arg mutationKind "withSetMutation" make_int
       ++ Objc.opt_arg objects "usingObjects" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
(* methods for category NSKeyValueObserverRegistration *)
(*  UNSUPPORTED
   method addObserver  ~forKeyPath:(keyPath : [`NSString] Objc.t ) ~options:(options : (*NSKeyValueObservingOptions*) unsupported ) ~context:(context : [`void] Objc.t ) (observer : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg observer "addObserver" make_pointer_from_object
       ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
       ++ Objc.arg options "options" (*NSKeyValueObservingOptions*) unsupported
       ++ Objc.arg context "context" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method removeObserver  ~forKeyPath:(keyPath : [`NSString] Objc.t ) (observer : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg observer "removeObserver" make_pointer_from_object
       ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
(* methods for category NSKeyValueObserving *)
   method observeValueForKeyPath  ~ofObject:(_object : [`NSObject] Objc.t ) ~change:(change : [`NSDictionary] Objc.t ) ~context:(context : [`void] Objc.t ) (keyPath : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg keyPath "observeValueForKeyPath" make_pointer_from_object
       ++ Objc.arg _object "ofObject" make_pointer_from_object
       ++ Objc.arg change "change" make_pointer_from_object
       ++ Objc.arg context "context" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
(* Class object for NSArray *)
let class_NSArray = object
   val repr = Classes.find "NSArray"
   method _new = (Objc.objcnew repr : [`NSArray] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSArray] nativeNSObject)
(* methods for category NSKeyValueObserverRegistration *)
end
(* Encapsulation for native instance of NSArray *)
class native_NSArray = fun (o : [`NSArray] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSKeyValueObserverRegistration *)
(*  UNSUPPORTED
   method addObserver  ~toObjectsAtIndexes:(indexes : [`NSIndexSet] Objc.t ) ~forKeyPath:(keyPath : [`NSString] Objc.t ) ~options:(options : (*NSKeyValueObservingOptions*) unsupported ) ~context:(context : [`void] Objc.t ) (observer : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg observer "addObserver" make_pointer_from_object
       ++ Objc.arg indexes "toObjectsAtIndexes" make_pointer_from_object
       ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
       ++ Objc.arg options "options" (*NSKeyValueObservingOptions*) unsupported
       ++ Objc.arg context "context" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method removeObserver  ~fromObjectsAtIndexes:(indexes : [`NSIndexSet] Objc.t ) ~forKeyPath:(keyPath : [`NSString] Objc.t ) (observer : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg observer "removeObserver" make_pointer_from_object
       ++ Objc.arg indexes "fromObjectsAtIndexes" make_pointer_from_object
       ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector addObserver:forKeyPath:options:context *)
   (* skipping selector removeObserver:forKeyPath *)
end
(* Class object for NSSet *)
let class_NSSet = object
   val repr = Classes.find "NSSet"
   method _new = (Objc.objcnew repr : [`NSSet] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSet] nativeNSObject)
(* methods for category NSKeyValueObserverRegistration *)
end
(* Encapsulation for native instance of NSSet *)
class native_NSSet = fun (o : [`NSSet] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSKeyValueObserverRegistration *)
(*  UNSUPPORTED
   method addObserver  ~forKeyPath:(keyPath : [`NSString] Objc.t ) ~options:(options : (*NSKeyValueObservingOptions*) unsupported ) ~context:(context : [`void] Objc.t ) (observer : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg observer "addObserver" make_pointer_from_object
       ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
       ++ Objc.arg options "options" (*NSKeyValueObservingOptions*) unsupported
       ++ Objc.arg context "context" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method removeObserver  ~forKeyPath:(keyPath : [`NSString] Objc.t ) (observer : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg observer "removeObserver" make_pointer_from_object
       ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
