(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURLCache *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithMemoryCapacity_diskCapacity_diskPath  (memoryCapacity : int) (diskCapacity : int) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg memoryCapacity "initWithMemoryCapacity" make_int
      ++ Objc.arg diskCapacity "diskCapacity" make_int
      ++ Objc.arg path "diskPath" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method cachedResponseForRequest (request : [`NSURLRequest] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "cachedResponseForRequest:")
      [make_pointer_from_object request]) : [`NSCachedURLResponse] Objc.id))
  method storeCachedResponse_forRequest  (cachedResponse : [`NSCachedURLResponse] Objc.t) (request : [`NSURLRequest] Objc.t) =
    let sel, args = (
      Objc.arg cachedResponse "storeCachedResponse" make_pointer_from_object
      ++ Objc.arg request "forRequest" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeCachedResponseForRequest (request : [`NSURLRequest] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeCachedResponseForRequest:")
      [make_pointer_from_object request]) : unit)
  method removeAllCachedResponses =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeAllCachedResponses")[])
       : unit)
  method memoryCapacity =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "memoryCapacity")[])
       : int)
  method diskCapacity =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "diskCapacity")[])
       : int)
  method setMemoryCapacity (memoryCapacity : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMemoryCapacity:")
      [make_int memoryCapacity]) : unit)
  method setDiskCapacity (diskCapacity : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDiskCapacity:")
      [make_int diskCapacity]) : unit)
  method currentMemoryUsage =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "currentMemoryUsage")[])
       : int)
  method currentDiskUsage =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "currentDiskUsage")[])
       : int)
end
