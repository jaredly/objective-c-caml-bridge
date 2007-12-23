open Objc
open NSObject


external init : unit -> unit = "caml_init_NSURLAuthenticationChallenge"
let _ = init()
(* Class object for NSURLAuthenticationChallenge *)
let class_NSURLAuthenticationChallenge = object
   val o = Classes.find "NSURLAuthenticationChallenge"
   method _new = (Objc.objcnew o : [`NSURLAuthenticationChallenge] nativeNSObject)
end
(* Encapsulation for native instance of NSURLAuthenticationChallenge *)
class native_NSURLAuthenticationChallenge = fun (o : [`NSURLAuthenticationChallenge] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithProtectionSpace  ~proposedCredential:(credential : [`NSURLCredential] Objc.t ) ~previousFailureCount:(previousFailureCount : int ) ~failureResponse:(response : [`NSURLResponse] Objc.t ) ~error:(error : [`NSError] Objc.t ) ~sender:(sender : [`NSObject] Objc.t ) (space : [`NSURLProtectionSpace] Objc.t) =
     let sel, args = (
       Objc.arg space "initWithProtectionSpace" make_pointer_from_object
       ++ Objc.arg credential "proposedCredential" make_pointer_from_object
       ++ Objc.arg previousFailureCount "previousFailureCount" make_int
       ++ Objc.arg response "failureResponse" make_pointer_from_object
       ++ Objc.arg error "error" make_pointer_from_object
       ++ Objc.arg sender "sender" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithAuthenticationChallenge  ~sender:(sender : [`NSObject] Objc.t ) (challenge : [`NSURLAuthenticationChallenge] Objc.t) =
     let sel, args = (
       Objc.arg challenge "initWithAuthenticationChallenge" make_pointer_from_object
       ++ Objc.arg sender "sender" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method protectionSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "protectionSpace:")[]) : [`NSURLProtectionSpace] Objc.nativeNSObject)
   method proposedCredential =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "proposedCredential:")[]) : [`NSURLCredential] Objc.nativeNSObject)
   method previousFailureCount =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "previousFailureCount:")[]) : int)
   method failureResponse =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "failureResponse:")[]) : [`NSURLResponse] Objc.nativeNSObject)
   method error =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "error:")[]) : [`NSError] Objc.nativeNSObject)
   method sender =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sender:")[]) : [`NSObject] Objc.nativeNSObject)
end
