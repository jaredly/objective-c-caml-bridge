(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMetadataQuery *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setDelegate (delegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object delegate]) : unit)
  method predicate =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "predicate")[])
       : [`NSPredicate] Objc.id))
  method setPredicate (predicate : [`NSPredicate] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPredicate:")
      [make_pointer_from_object predicate]) : unit)
  method sortDescriptors =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "sortDescriptors")[])
       : [`NSArray] Objc.id))
  method setSortDescriptors (descriptors : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSortDescriptors:")
      [make_pointer_from_object descriptors]) : unit)
  method valueListAttributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valueListAttributes")[])
       : [`NSArray] Objc.id))
  method setValueListAttributes (attrs : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setValueListAttributes:")
      [make_pointer_from_object attrs]) : unit)
  method groupingAttributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "groupingAttributes")[])
       : [`NSArray] Objc.id))
  method setGroupingAttributes (attrs : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setGroupingAttributes:")
      [make_pointer_from_object attrs]) : unit)
  method notificationBatchingInterval =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "notificationBatchingInterval")[])
       : float)
  method setNotificationBatchingInterval (ti : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNotificationBatchingInterval:")
      [make_float ti]) : unit)
  method searchScopes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "searchScopes")[])
       : [`NSArray] Objc.id))
  method setSearchScopes (scopes : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSearchScopes:")
      [make_pointer_from_object scopes]) : unit)
  method startQuery =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "startQuery")[])
       : bool)
  method stopQuery =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stopQuery")[])
       : unit)
  method isStarted =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isStarted")[])
       : bool)
  method isGathering =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isGathering")[])
       : bool)
  method isStopped =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isStopped")[])
       : bool)
  method disableUpdates =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "disableUpdates")[])
       : unit)
  method enableUpdates =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "enableUpdates")[])
       : unit)
  method resultCount =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "resultCount")[])
       : int)
  method resultAtIndex (idx : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "resultAtIndex:")
      [make_int idx]) : [`NSObject] Objc.id)
  method results =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "results")[])
       : [`NSArray] Objc.id))
  method indexOfResult (result : [`NSObject] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfResult:")
      [make_pointer_from_object result]) : int)
  method valueLists =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valueLists")[])
       : [`NSDictionary] Objc.id))
  method groupedResults =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "groupedResults")[])
       : [`NSArray] Objc.id))
  method valueOfAttribute_forResultAtIndex  (attrName : [`NSString] Objc.t) (idx : int) =
    let sel, args = (
      Objc.arg attrName "valueOfAttribute" make_pointer_from_object
      ++ Objc.arg idx "forResultAtIndex" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
