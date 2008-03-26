(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSInputStreamExtensions.methods_NSInputStream
  inherit Im_NSInputStream.methods
end

class t = fun (r :[`NSInputStream] id) -> object
  inherit methods
  inherit NSStream.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSInputStream *)
let c = Classes.find "NSInputStream"
let _new()= (Objc.objcnew c : [`NSInputStream] id)
let alloc() = (Objc.objcalloc c : [`NSInputStream] id)
(* class methods for category NSInputStreamExtensions of NSInputStream *)
let inputStreamWithData (data : [`NSData] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "inputStreamWithData:")
      [make_pointer_from_object data]) : [`NSInputStream] Objc.id))
let inputStreamWithFileAtPath (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "inputStreamWithFileAtPath:")
      [make_pointer_from_object path]) : [`NSInputStream] Objc.id))
