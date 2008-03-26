(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSTaskConveniences of NSTask *)
class virtual methods_NSTask = object (self)
  method virtual repr : [`NSObject] Objc.id
  method waitUntilExit =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "waitUntilExit")[])
       : unit)
end
