(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSValueExtensionMethods of NSValue *)
class virtual methods_NSValue = object (self)
  method virtual repr : [`NSValue] Objc.id
  method nonretainedObjectValue =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "nonretainedObjectValue")[])
       : [`NSObject] Objc.id)
  method pointerValue =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pointerValue")[])
       : [`void] Objc.id))
  method isEqualToValue (value : [`NSValue] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEqualToValue:")
      [make_pointer_from_object value]) : bool)
end
