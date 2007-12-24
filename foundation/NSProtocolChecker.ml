(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSProxy
open NSObject


external init : unit -> unit = "caml_init_NSProtocolChecker"
let _ = init()
let make_NSProxy_of_NSProtocolChecker (o : [`NSProtocolChecker] nativeNSObject) = (Obj.magic o : [`NSProxy] nativeNSObject)
(* Class object for NSProtocolChecker *)
let class_NSProtocolChecker = object
   val repr = Classes.find "NSProtocolChecker"
   method _new = (Objc.objcnew repr : [`NSProtocolChecker] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSProtocolChecker] nativeNSObject)
(* methods for category NSProtocolCheckerCreation *)
   method protocolCheckerWithTarget  ~protocol:(aProtocol : [`Protocol] Objc.t ) (anObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg anObject "protocolCheckerWithTarget" make_pointer_from_object
       ++ Objc.arg aProtocol "protocol" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSProtocolChecker] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSProtocolChecker *)
class native_NSProtocolChecker = fun (o : [`NSProtocolChecker] nativeNSObject) -> object (self)
   inherit native_NSProxy (make_NSProxy_of_NSProtocolChecker o) as super
(* methods for category NSProtocolCheckerCreation *)
   method initWithTarget  ~protocol:(aProtocol : [`Protocol] Objc.t ) (anObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg anObject "initWithTarget" make_pointer_from_object
       ++ Objc.arg aProtocol "protocol" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method protocol =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "protocol:")[]) : [`Protocol] Objc.nativeNSObject)
   method target =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "target:")[]) : [`NSObject] Objc.nativeNSObject)
end
