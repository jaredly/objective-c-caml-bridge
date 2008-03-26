(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPortMessage *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithSendPort_receivePort_components  (sendPort : [`NSPort] Objc.t) (replyPort : [`NSPort] Objc.t) (components : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg sendPort "initWithSendPort" make_pointer_from_object
      ++ Objc.arg replyPort "receivePort" make_pointer_from_object
      ++ Objc.arg components "components" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method components =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "components")[])
       : [`NSArray] Objc.id))
  method receivePort =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "receivePort")[])
       : [`NSPort] Objc.id))
  method sendPort =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "sendPort")[])
       : [`NSPort] Objc.id))
  method sendBeforeDate (date : [`NSDate] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "sendBeforeDate:")
      [make_pointer_from_object date]) : bool)
  method msgid =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "msgid")[])
       : int)
  method setMsgid (msgid : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMsgid:")
      [make_int msgid]) : unit)
end
