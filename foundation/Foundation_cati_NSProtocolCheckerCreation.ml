(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSProtocolCheckerCreation of NSProtocolChecker *)
class virtual methods_NSProtocolChecker = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithTarget_protocol  (anObject : [`NSObject] Objc.t) (aProtocol : [`Protocol] Objc.t) =
    let sel, args = (
      Objc.arg anObject "initWithTarget" make_pointer_from_object
      ++ Objc.arg aProtocol "protocol" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
