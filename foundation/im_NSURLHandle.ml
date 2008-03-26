(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURLHandle *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method status =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "status")[])
       : int)
  method failureReason =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "failureReason")[])
       : [`NSString] Objc.id))
  method addClient (client : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addClient:")
      [make_pointer_from_object client]) : unit)
  method removeClient (client : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeClient:")
      [make_pointer_from_object client]) : unit)
  method loadInBackground =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "loadInBackground")[])
       : unit)
  method cancelLoadInBackground =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "cancelLoadInBackground")[])
       : unit)
  method resourceData =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "resourceData")[])
       : [`NSData] Objc.id))
  method availableResourceData =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "availableResourceData")[])
       : [`NSData] Objc.id))
  method expectedResourceDataSize =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "expectedResourceDataSize")[])
       : int64)
  method flushCachedData =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "flushCachedData")[])
       : unit)
  method backgroundLoadDidFailWithReason (reason : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "backgroundLoadDidFailWithReason:")
      [make_pointer_from_object reason]) : unit)
  method didLoadBytes_loadComplete  (newBytes : [`NSData] Objc.t) (yorn : bool) =
    let sel, args = (
      Objc.arg newBytes "didLoadBytes" make_pointer_from_object
      ++ Objc.arg yorn "loadComplete" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method initWithURL_cached  (anURL : [`NSURL] Objc.t) (willCache : bool) =
    let sel, args = (
      Objc.arg anURL "initWithURL" make_pointer_from_object
      ++ Objc.arg willCache "cached" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method propertyForKey (propertyKey : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "propertyForKey:")
      [make_pointer_from_object propertyKey]) : [`NSObject] Objc.id)
  method propertyForKeyIfAvailable (propertyKey : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "propertyForKeyIfAvailable:")
      [make_pointer_from_object propertyKey]) : [`NSObject] Objc.id)
  method writeProperty_forKey  (propertyValue : [`NSObject] Objc.t) (propertyKey : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg propertyValue "writeProperty" make_pointer_from_object
      ++ Objc.arg propertyKey "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeData (data : [`NSData] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "writeData:")
      [make_pointer_from_object data]) : bool)
  method loadInForeground =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "loadInForeground")[])
       : [`NSData] Objc.id))
  method beginLoadInBackground =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "beginLoadInBackground")[])
       : unit)
  method endLoadInBackground =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "endLoadInBackground")[])
       : unit)
end
