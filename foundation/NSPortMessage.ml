open Objc
open NSObject


external init : unit -> unit = "caml_init_NSPortMessage"
let _ = init()
(* Class object for NSPortMessage *)
let class_NSPortMessage = object
   val o = Classes.find "NSPortMessage"
   method _new = (Objc.objcnew o : [`NSPortMessage] nativeNSObject)
end
(* Encapsulation for native instance of NSPortMessage *)
class native_NSPortMessage = fun (o : [`NSPortMessage] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithSendPort  ~receivePort:(replyPort : [`NSPort] Objc.t ) ~components:(components : [`NSArray] Objc.t ) (sendPort : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg sendPort "initWithSendPort" make_pointer_from_object
       ++ Objc.arg replyPort "receivePort" make_pointer_from_object
       ++ Objc.arg components "components" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method components =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "components:")[]) : [`NSArray] Objc.nativeNSObject)
   method receivePort =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "receivePort:")[]) : [`NSPort] Objc.nativeNSObject)
   method sendPort =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sendPort:")[]) : [`NSPort] Objc.nativeNSObject)
   method sendBeforeDate (date : [`NSDate] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "sendBeforeDate:")[make_pointer_from_object date]) : bool)
   method msgid =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "msgid:")[]) : int)
   method setMsgid (msgid : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMsgid:")[make_int msgid]) : unit)
end
