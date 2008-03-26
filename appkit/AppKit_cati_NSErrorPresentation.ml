(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSErrorPresentation of NSResponder *)
class virtual methods_NSResponder = object (self)
  method virtual repr : [`NSObject] Objc.id
  method presentError_modalForWindow_delegate_didPresentSelector_contextInfo  (error : [`NSError] Objc.t) (window : [`NSWindow] Objc.t) (delegate : [`NSObject] Objc.t) (didPresentSelector : selector) (contextInfo : [`void] Objc.t) =
    let sel, args = (
      Objc.arg error "presentError" make_pointer_from_object
      ++ Objc.arg window "modalForWindow" make_pointer_from_object
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg didPresentSelector "didPresentSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method presentError (error : [`NSError] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "presentError:")
      [make_pointer_from_object error]) : bool)
  method willPresentError (error : [`NSError] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "willPresentError:")
      [make_pointer_from_object error]) : [`NSError] Objc.id))
end
