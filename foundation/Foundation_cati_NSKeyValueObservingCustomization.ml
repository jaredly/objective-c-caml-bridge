(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSKeyValueObservingCustomization of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setObservationInfo (observationInfo : [`void] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setObservationInfo:")
      [make_pointer_from_object observationInfo]) : unit)
  method observationInfo =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "observationInfo")[])
       : [`void] Objc.id))
end
