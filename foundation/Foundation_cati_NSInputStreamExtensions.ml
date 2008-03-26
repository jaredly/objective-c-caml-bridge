(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSInputStreamExtensions of NSInputStream *)
class virtual methods_NSInputStream = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithData (data : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithData:")
      [make_pointer_from_object data]) : [`NSObject] Objc.id)
  method initWithFileAtPath (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithFileAtPath:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
end
