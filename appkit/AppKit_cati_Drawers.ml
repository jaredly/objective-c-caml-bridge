(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category Drawers of NSWindow *)
class virtual methods_NSWindow = object (self)
  method virtual repr : [`NSObject] Objc.id
  method drawers =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "drawers")[])
       : [`NSArray] Objc.id))
end
