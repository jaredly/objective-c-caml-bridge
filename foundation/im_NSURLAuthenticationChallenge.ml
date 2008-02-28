(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURLAuthenticationChallenge *)
class virtual methods = object (self)
  method virtual repr : [`NSURLAuthenticationChallenge] Objc.id
  method initWithProtectionSpace  ~proposedCredential:(credential : [`NSURLCredential] Objc.t ) ~previousFailureCount:(previousFailureCount : int ) ~failureResponse:(response : [`NSURLResponse] Objc.t ) ~error:(error : [`NSError] Objc.t ) ~sender:(sender : [`NSObject] Objc.t ) (space : [`NSURLProtectionSpace] Objc.t) =
    let sel, args = (
      Objc.arg space "initWithProtectionSpace" make_pointer_from_object
      ++ Objc.arg credential "proposedCredential" make_pointer_from_object
      ++ Objc.arg previousFailureCount "previousFailureCount" make_int
      ++ Objc.arg response "failureResponse" make_pointer_from_object
      ++ Objc.arg error "error" make_pointer_from_object
      ++ Objc.arg sender "sender" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithAuthenticationChallenge  ~sender:(sender : [`NSObject] Objc.t ) (challenge : [`NSURLAuthenticationChallenge] Objc.t) =
    let sel, args = (
      Objc.arg challenge "initWithAuthenticationChallenge" make_pointer_from_object
      ++ Objc.arg sender "sender" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method protectionSpace =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "protectionSpace")[])
       : [`NSURLProtectionSpace] Objc.id))
  method proposedCredential =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "proposedCredential")[])
       : [`NSURLCredential] Objc.id))
  method previousFailureCount =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "previousFailureCount")[])
       : int)
  method failureResponse =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "failureResponse")[])
       : [`NSURLResponse] Objc.id))
  method error =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "error")[])
       : [`NSError] Objc.id))
  method sender =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "sender")[])
       : [`NSObject] Objc.id)
end
