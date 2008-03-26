(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSRangeSpecifier *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithContainerClassDescription_containerSpecifier_key_startSpecifier_endSpecifier  (classDesc : [`NSScriptClassDescription] Objc.t) (container : [`NSScriptObjectSpecifier] Objc.t) (property : [`NSString] Objc.t) (startSpec : [`NSScriptObjectSpecifier] Objc.t) (endSpec : [`NSScriptObjectSpecifier] Objc.t) =
    let sel, args = (
      Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
      ++ Objc.arg container "containerSpecifier" make_pointer_from_object
      ++ Objc.arg property "key" make_pointer_from_object
      ++ Objc.arg startSpec "startSpecifier" make_pointer_from_object
      ++ Objc.arg endSpec "endSpecifier" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method startSpecifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "startSpecifier")[])
       : [`NSScriptObjectSpecifier] Objc.id))
  method setStartSpecifier (startSpec : [`NSScriptObjectSpecifier] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setStartSpecifier:")
      [make_pointer_from_object startSpec]) : unit)
  method endSpecifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "endSpecifier")[])
       : [`NSScriptObjectSpecifier] Objc.id))
  method setEndSpecifier (endSpec : [`NSScriptObjectSpecifier] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEndSpecifier:")
      [make_pointer_from_object endSpec]) : unit)
end
