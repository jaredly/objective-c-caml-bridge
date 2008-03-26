(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSNameSpecifier *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithContainerClassDescription_containerSpecifier_key_name  (classDesc : [`NSScriptClassDescription] Objc.t) (container : [`NSScriptObjectSpecifier] Objc.t) (property : [`NSString] Objc.t) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
      ++ Objc.arg container "containerSpecifier" make_pointer_from_object
      ++ Objc.arg property "key" make_pointer_from_object
      ++ Objc.arg name "name" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method setName (name : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setName:")
      [make_pointer_from_object name]) : unit)
end
