(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSScripting of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method scriptingProperties =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "scriptingProperties")[])
       : [`NSDictionary] Objc.id))
  method setScriptingProperties (properties : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setScriptingProperties:")
      [make_pointer_from_object properties]) : unit)
end
