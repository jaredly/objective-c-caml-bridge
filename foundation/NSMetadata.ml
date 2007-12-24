(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSDate


external init : unit -> unit = "caml_init_NSMetadata"
let _ = init()
let make_NSObject_of_NSMetadataQuery (o : [`NSMetadataQuery] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSMetadataQuery *)
let class_NSMetadataQuery = object
   val repr = Classes.find "NSMetadataQuery"
   method _new = (Objc.objcnew repr : [`NSMetadataQuery] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMetadataQuery] nativeNSObject)
end
(* Encapsulation for native instance of NSMetadataQuery *)
class native_NSMetadataQuery = fun (o : [`NSMetadataQuery] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSMetadataQuery o) as super
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (delegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object delegate]) : unit)
   method predicate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "predicate:")[]) : [`NSPredicate] Objc.nativeNSObject)
   method setPredicate (predicate : [`NSPredicate] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPredicate:")[make_pointer_from_object predicate]) : unit)
   method sortDescriptors =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sortDescriptors:")[]) : [`NSArray] Objc.nativeNSObject)
   method setSortDescriptors (descriptors : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSortDescriptors:")[make_pointer_from_object descriptors]) : unit)
   method valueListAttributes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "valueListAttributes:")[]) : [`NSArray] Objc.nativeNSObject)
   method setValueListAttributes (attrs : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setValueListAttributes:")[make_pointer_from_object attrs]) : unit)
   method groupingAttributes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "groupingAttributes:")[]) : [`NSArray] Objc.nativeNSObject)
   method setGroupingAttributes (attrs : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setGroupingAttributes:")[make_pointer_from_object attrs]) : unit)
   method notificationBatchingInterval =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "notificationBatchingInterval:")[]) : float)
   method setNotificationBatchingInterval (ti : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setNotificationBatchingInterval:")[make_float ti]) : unit)
   method searchScopes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "searchScopes:")[]) : [`NSArray] Objc.nativeNSObject)
   method setSearchScopes (scopes : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSearchScopes:")[make_pointer_from_object scopes]) : unit)
   method startQuery =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "startQuery:")[]) : bool)
   method stopQuery =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "stopQuery:")[]) : unit)
   method isStarted =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isStarted:")[]) : bool)
   method isGathering =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isGathering:")[]) : bool)
   method isStopped =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isStopped:")[]) : bool)
   method disableUpdates =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "disableUpdates:")[]) : unit)
   method enableUpdates =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "enableUpdates:")[]) : unit)
   method resultCount =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "resultCount:")[]) : int)
   method resultAtIndex (idx : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resultAtIndex:")[make_int idx]) : [`NSObject] Objc.nativeNSObject)
   method results =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "results:")[]) : [`NSArray] Objc.nativeNSObject)
   method indexOfResult (result : [`NSObject] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "indexOfResult:")[make_pointer_from_object result]) : int)
   method valueLists =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "valueLists:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method groupedResults =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "groupedResults:")[]) : [`NSArray] Objc.nativeNSObject)
   method valueOfAttribute  ~forResultAtIndex:(idx : int ) (attrName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg attrName "valueOfAttribute" make_pointer_from_object
       ++ Objc.arg idx "forResultAtIndex" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSMetadataQueryDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSMetadataQueryDelegate *)
   (* skipping selector metadataQuery:replacementObjectForResultObject *)
   method metadataQuery  ~replacementValueForAttribute:(attrName : [`NSString] Objc.t ) ~value:(attrValue : [`NSObject] Objc.t ) (query : [`NSMetadataQuery] Objc.t) =
     let sel, args = (
       Objc.arg query "metadataQuery" make_pointer_from_object
       ++ Objc.arg attrName "replacementValueForAttribute" make_pointer_from_object
       ++ Objc.arg attrValue "value" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
end
let make_NSObject_of_NSMetadataItem (o : [`NSMetadataItem] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSMetadataItem *)
let class_NSMetadataItem = object
   val repr = Classes.find "NSMetadataItem"
   method _new = (Objc.objcnew repr : [`NSMetadataItem] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMetadataItem] nativeNSObject)
end
(* Encapsulation for native instance of NSMetadataItem *)
class native_NSMetadataItem = fun (o : [`NSMetadataItem] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSMetadataItem o) as super
   method valueForAttribute (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "valueForAttribute:")[make_pointer_from_object key]) : [`NSObject] Objc.nativeNSObject)
   method valuesForAttributes (keys : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "valuesForAttributes:")[make_pointer_from_object keys]) : [`NSDictionary] Objc.nativeNSObject)
   method attributes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "attributes:")[]) : [`NSArray] Objc.nativeNSObject)
end
let make_NSObject_of_NSMetadataQueryAttributeValueTuple (o : [`NSMetadataQueryAttributeValueTuple] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSMetadataQueryAttributeValueTuple *)
let class_NSMetadataQueryAttributeValueTuple = object
   val repr = Classes.find "NSMetadataQueryAttributeValueTuple"
   method _new = (Objc.objcnew repr : [`NSMetadataQueryAttributeValueTuple] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMetadataQueryAttributeValueTuple] nativeNSObject)
end
(* Encapsulation for native instance of NSMetadataQueryAttributeValueTuple *)
class native_NSMetadataQueryAttributeValueTuple = fun (o : [`NSMetadataQueryAttributeValueTuple] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSMetadataQueryAttributeValueTuple o) as super
   method attribute =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "attribute:")[]) : [`NSString] Objc.nativeNSObject)
   method value =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "value:")[]) : [`NSObject] Objc.nativeNSObject)
   method count =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "count:")[]) : int)
end
let make_NSObject_of_NSMetadataQueryResultGroup (o : [`NSMetadataQueryResultGroup] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSMetadataQueryResultGroup *)
let class_NSMetadataQueryResultGroup = object
   val repr = Classes.find "NSMetadataQueryResultGroup"
   method _new = (Objc.objcnew repr : [`NSMetadataQueryResultGroup] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMetadataQueryResultGroup] nativeNSObject)
end
(* Encapsulation for native instance of NSMetadataQueryResultGroup *)
class native_NSMetadataQueryResultGroup = fun (o : [`NSMetadataQueryResultGroup] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSMetadataQueryResultGroup o) as super
   method attribute =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "attribute:")[]) : [`NSString] Objc.nativeNSObject)
   method value =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "value:")[]) : [`NSObject] Objc.nativeNSObject)
   method subgroups =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "subgroups:")[]) : [`NSArray] Objc.nativeNSObject)
   method resultCount =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "resultCount:")[]) : int)
   method resultAtIndex (idx : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resultAtIndex:")[make_int idx]) : [`NSObject] Objc.nativeNSObject)
   method results =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "results:")[]) : [`NSArray] Objc.nativeNSObject)
end
