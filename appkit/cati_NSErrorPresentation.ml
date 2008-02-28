(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSErrorPresentation of NSResponder *)
class virtual methods_NSResponder = object (self)
  method virtual repr : [`NSResponder] Objc.id
  method presentError  ?modalForWindow:(window : [`NSWindow] Objc.t option) ?delegate:(delegate : [`NSObject] Objc.t option) ?didPresentSelector:(didPresentSelector : selector option) ?contextInfo:(contextInfo : [`void] Objc.t option) (error : [`NSError] Objc.t) =
    let sel, args = (
      Objc.arg error "presentError" make_pointer_from_object
      ++ Objc.opt_arg window "modalForWindow" make_pointer_from_object
      ++ Objc.opt_arg delegate "delegate" make_pointer_from_object
      ++ Objc.opt_arg didPresentSelector "didPresentSelector" make_selector
      ++ Objc.opt_arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  (* skipping selector presentError *)
  method willPresentError (error : [`NSError] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "willPresentError:")
      [make_pointer_from_object error]) : [`NSError] Objc.id))
end
