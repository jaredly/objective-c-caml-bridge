(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSMachPortDelegateMethods of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method handleMachMessage (msg : [`void] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "handleMachMessage:")
      [make_pointer_from_object msg]) : unit)
end
