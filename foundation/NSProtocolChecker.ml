(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSProtocolChecker] id) -> object
  inherit Cati_NSProtocolCheckerCreation.methods_NSProtocolChecker
  inherit Im_NSProtocolChecker.methods
  method repr = r
end

(* Class object for NSProtocolChecker *)
let c = Classes.find "NSProtocolChecker"
let _new()= (Objc.objcnew c : [`NSProtocolChecker] id)
let alloc() = (Objc.objcalloc c : [`NSProtocolChecker] id)
(* class methods for category NSProtocolCheckerCreation of NSProtocolChecker *)
let protocolCheckerWithTarget  ~protocol:(aProtocol : [`Protocol] Objc.t ) (anObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg anObject "protocolCheckerWithTarget" make_pointer_from_object
      ++ Objc.arg aProtocol "protocol" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSProtocolChecker] Objc.id))
