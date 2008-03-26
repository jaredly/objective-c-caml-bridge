(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSIndexSpecifier *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithContainerClassDescription_containerSpecifier_key_index  (classDesc : [`NSScriptClassDescription] Objc.t) (container : [`NSScriptObjectSpecifier] Objc.t) (property : [`NSString] Objc.t) (index : int) =
    let sel, args = (
      Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
      ++ Objc.arg container "containerSpecifier" make_pointer_from_object
      ++ Objc.arg property "key" make_pointer_from_object
      ++ Objc.arg index "index" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method index =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "index")[])
       : int)
  method setIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIndex:")
      [make_int index]) : unit)
end
