open Objc
open NSProxy
open NSObject


external init : unit -> unit = "caml_init_NSProtocolChecker"
let _ = init()
(* Class object for NSProtocolChecker *)
let class_NSProtocolChecker = object
   val o = Classes.find "NSProtocolChecker"
   method _new = (Objc.objcnew o : [`NSProtocolChecker] nativeNSObject)
(* methods for category NSProtocolCheckerCreation *)
   method protocolCheckerWithTarget  ~protocol:(aProtocol : [`Protocol] Objc.t ) (anObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg anObject "protocolCheckerWithTarget" make_pointer_from_object
       ++ Objc.arg aProtocol "protocol" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSProtocolChecker] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSProtocolChecker *)
class native_NSProtocolChecker = fun (o : [`NSProtocolChecker] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSProtocolCheckerCreation *)
   method initWithTarget  ~protocol:(aProtocol : [`Protocol] Objc.t ) (anObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg anObject "initWithTarget" make_pointer_from_object
       ++ Objc.arg aProtocol "protocol" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method protocol =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "protocol:")[]) : [`Protocol] Objc.nativeNSObject)
   method target =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "target:")[]) : [`NSObject] Objc.nativeNSObject)
end
