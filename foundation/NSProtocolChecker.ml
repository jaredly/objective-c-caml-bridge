(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSProtocolCheckerCreation.methods_NSProtocolChecker
  inherit Im_NSProtocolChecker.methods
end

class t = fun (r :[`NSProtocolChecker] id) -> object
  inherit methods
  inherit NSProxy.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSProtocolChecker *)
let c = Classes.find "NSProtocolChecker"
let _new()= (Objc.objcnew c : [`NSProtocolChecker] id)
let alloc() = (Objc.objcalloc c : [`NSProtocolChecker] id)
(* class methods for category NSProtocolCheckerCreation of NSProtocolChecker *)
let protocolCheckerWithTarget_protocol  (anObject : [`NSObject] Objc.t) (aProtocol : [`Protocol] Objc.t) =
    let sel, args = (
      Objc.arg anObject "protocolCheckerWithTarget" make_pointer_from_object
      ++ Objc.arg aProtocol "protocol" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSProtocolChecker] Objc.id))
