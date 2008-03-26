(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPort *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method invalidate =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "invalidate")[])
       : unit)
  method isValid =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isValid")[])
       : bool)
  method setDelegate (anId : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anId]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method scheduleInRunLoop_forMode  (runLoop : [`NSRunLoop] Objc.t) (mode : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg runLoop "scheduleInRunLoop" make_pointer_from_object
      ++ Objc.arg mode "forMode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeFromRunLoop_forMode  (runLoop : [`NSRunLoop] Objc.t) (mode : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg runLoop "removeFromRunLoop" make_pointer_from_object
      ++ Objc.arg mode "forMode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method reservedSpaceLength =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "reservedSpaceLength")[])
       : int)
  method sendBeforeDate_components_from_reserved  (limitDate : [`NSDate] Objc.t) (components : [`NSMutableArray] Objc.t) (receivePort : [`NSPort] Objc.t) (headerSpaceReserved : int) =
    let sel, args = (
      Objc.arg limitDate "sendBeforeDate" make_pointer_from_object
      ++ Objc.arg components "components" make_pointer_from_object
      ++ Objc.arg receivePort "from" make_pointer_from_object
      ++ Objc.arg headerSpaceReserved "reserved" make_int
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method sendBeforeDate_msgid_components_from_reserved  (limitDate : [`NSDate] Objc.t) (msgID : int) (components : [`NSMutableArray] Objc.t) (receivePort : [`NSPort] Objc.t) (headerSpaceReserved : int) =
    let sel, args = (
      Objc.arg limitDate "sendBeforeDate" make_pointer_from_object
      ++ Objc.arg msgID "msgid" make_int
      ++ Objc.arg components "components" make_pointer_from_object
      ++ Objc.arg receivePort "from" make_pointer_from_object
      ++ Objc.arg headerSpaceReserved "reserved" make_int
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method addConnection_toRunLoop_forMode  (conn : [`NSConnection] Objc.t) (runLoop : [`NSRunLoop] Objc.t) (mode : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg conn "addConnection" make_pointer_from_object
      ++ Objc.arg runLoop "toRunLoop" make_pointer_from_object
      ++ Objc.arg mode "forMode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeConnection_fromRunLoop_forMode  (conn : [`NSConnection] Objc.t) (runLoop : [`NSRunLoop] Objc.t) (mode : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg conn "removeConnection" make_pointer_from_object
      ++ Objc.arg runLoop "fromRunLoop" make_pointer_from_object
      ++ Objc.arg mode "forMode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
