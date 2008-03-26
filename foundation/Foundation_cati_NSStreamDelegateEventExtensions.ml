(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSStreamDelegateEventExtensions of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method stream_handleEvent  (aStream : [`NSStream] Objc.t) (eventCode : int) =
    let sel, args = (
      Objc.arg aStream "stream" make_pointer_from_object
      ++ Objc.arg eventCode "handleEvent" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
