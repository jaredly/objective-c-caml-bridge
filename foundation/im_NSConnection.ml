(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSConnection *)
class virtual methods = object (self)
  method virtual repr : [`NSConnection] Objc.id
  method statistics =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "statistics")[])
       : [`NSDictionary] Objc.id))
  method setRequestTimeout (ti : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRequestTimeout:")
      [make_float ti]) : unit)
  method requestTimeout =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "requestTimeout")[])
       : float)
  method setReplyTimeout (ti : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setReplyTimeout:")
      [make_float ti]) : unit)
  method replyTimeout =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "replyTimeout")[])
       : float)
  method setRootObject (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRootObject:")
      [make_pointer_from_object anObject]) : unit)
  method rootObject =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "rootObject")[])
       : [`NSObject] Objc.id)
  method rootProxy =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "rootProxy")[])
       : [`NSDistantObject] Objc.id))
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setIndependentConversationQueueing (yorn : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIndependentConversationQueueing:")
      [make_bool yorn]) : unit)
  method independentConversationQueueing =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "independentConversationQueueing")[])
       : bool)
  method isValid =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isValid")[])
       : bool)
  method invalidate =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "invalidate")[])
       : unit)
  method addRequestMode (rmode : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addRequestMode:")
      [make_pointer_from_object rmode]) : unit)
  method removeRequestMode (rmode : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeRequestMode:")
      [make_pointer_from_object rmode]) : unit)
  method requestModes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "requestModes")[])
       : [`NSArray] Objc.id))
  (* skipping selector registerName *)
  method registerName  ?withNameServer:(server : [`NSPortNameServer] Objc.t option) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "registerName" make_pointer_from_object
      ++ Objc.opt_arg server "withNameServer" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method initWithReceivePort  ~sendPort:(sendPort : [`NSPort] Objc.t ) (receivePort : [`NSPort] Objc.t) =
    let sel, args = (
      Objc.arg receivePort "initWithReceivePort" make_pointer_from_object
      ++ Objc.arg sendPort "sendPort" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method sendPort =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "sendPort")[])
       : [`NSPort] Objc.id))
  method receivePort =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "receivePort")[])
       : [`NSPort] Objc.id))
  method enableMultipleThreads =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "enableMultipleThreads")[])
       : unit)
  method multipleThreadsEnabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "multipleThreadsEnabled")[])
       : bool)
  method addRunLoop (runloop : [`NSRunLoop] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addRunLoop:")
      [make_pointer_from_object runloop]) : unit)
  method removeRunLoop (runloop : [`NSRunLoop] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeRunLoop:")
      [make_pointer_from_object runloop]) : unit)
  method runInNewThread =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "runInNewThread")[])
       : unit)
  method remoteObjects =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "remoteObjects")[])
       : [`NSArray] Objc.id))
  method localObjects =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localObjects")[])
       : [`NSArray] Objc.id))
end
