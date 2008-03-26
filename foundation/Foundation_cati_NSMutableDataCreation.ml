(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSMutableDataCreation of NSMutableData *)
class virtual methods_NSMutableData = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithCapacity (capacity : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithCapacity:")
      [make_int capacity]) : [`NSObject] Objc.id)
  method initWithLength (length : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithLength:")
      [make_int length]) : [`NSObject] Objc.id)
end
