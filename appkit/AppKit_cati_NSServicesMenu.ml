(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSServicesMenu of NSApplication *)
class virtual methods_NSApplication = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setServicesMenu (aMenu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setServicesMenu:")
      [make_pointer_from_object aMenu]) : unit)
  method servicesMenu =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "servicesMenu")[])
       : [`NSMenu] Objc.id))
  method registerServicesMenuSendTypes_returnTypes  (sendTypes : [`NSArray] Objc.t) (returnTypes : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg sendTypes "registerServicesMenuSendTypes" make_pointer_from_object
      ++ Objc.arg returnTypes "returnTypes" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
