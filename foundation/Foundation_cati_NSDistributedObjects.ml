(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDistributedObjects of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method classForPortCoder =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "classForPortCoder")[])
       : [`NSObject] Objc.id)
  method replacementObjectForPortCoder (coder : [`NSPortCoder] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "replacementObjectForPortCoder:")
      [make_pointer_from_object coder]) : [`NSObject] Objc.id)
end
