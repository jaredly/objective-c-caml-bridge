(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSServicesHandling of NSApplication *)
class virtual methods_NSApplication = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setServicesProvider (provider : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setServicesProvider:")
      [make_pointer_from_object provider]) : unit)
  method servicesProvider =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "servicesProvider")[])
       : [`NSObject] Objc.id)
end
