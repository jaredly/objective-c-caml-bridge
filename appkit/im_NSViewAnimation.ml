(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSViewAnimation *)
class virtual methods = object (self)
  method virtual repr : [`NSViewAnimation] Objc.id
  method initWithViewAnimations (viewAnimations : [`NSArray] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithViewAnimations:")
      [make_pointer_from_object viewAnimations]) : [`NSObject] Objc.id)
  method viewAnimations =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "viewAnimations")[])
       : [`NSArray] Objc.id))
  method setViewAnimations (viewAnimations : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setViewAnimations:")
      [make_pointer_from_object viewAnimations]) : unit)
end
