(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSPortMessage"
let _ = init()
let make_NSObject_of_NSPortMessage (o : [`NSPortMessage] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSPortMessage *)
let class_NSPortMessage = object
   val repr = Classes.find "NSPortMessage"
   method _new = (Objc.objcnew repr : [`NSPortMessage] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPortMessage] nativeNSObject)
end
(* Encapsulation for native instance of NSPortMessage *)
class native_NSPortMessage = fun (o : [`NSPortMessage] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSPortMessage o) as super
   method initWithSendPort  ~receivePort:(replyPort : [`NSPort] Objc.t ) ~components:(components : [`NSArray] Objc.t ) (sendPort : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg sendPort "initWithSendPort" make_pointer_from_object
       ++ Objc.arg replyPort "receivePort" make_pointer_from_object
       ++ Objc.arg components "components" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method components =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "components:")[]) : [`NSArray] Objc.nativeNSObject)
   method receivePort =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "receivePort:")[]) : [`NSPort] Objc.nativeNSObject)
   method sendPort =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sendPort:")[]) : [`NSPort] Objc.nativeNSObject)
   method sendBeforeDate (date : [`NSDate] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "sendBeforeDate:")[make_pointer_from_object date]) : bool)
   method msgid =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "msgid:")[]) : int)
   method setMsgid (msgid : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMsgid:")[make_int msgid]) : unit)
end
