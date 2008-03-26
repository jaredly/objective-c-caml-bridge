(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSColorPanel of NSApplication *)
class virtual methods_NSApplication = object (self)
  method virtual repr : [`NSObject] Objc.id
  method orderFrontColorPanel (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderFrontColorPanel:")
      [make_pointer_from_object sender]) : unit)
end
