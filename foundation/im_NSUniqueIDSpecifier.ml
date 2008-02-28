(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSUniqueIDSpecifier *)
class virtual methods = object (self)
  method virtual repr : [`NSUniqueIDSpecifier] Objc.id
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method initWithContainerClassDescription  ~containerSpecifier:(container : [`NSScriptObjectSpecifier] Objc.t ) ~key:(property : [`NSString] Objc.t ) ~uniqueID:(uniqueID : [`NSObject] Objc.t ) (classDesc : [`NSScriptClassDescription] Objc.t) =
    let sel, args = (
      Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
      ++ Objc.arg container "containerSpecifier" make_pointer_from_object
      ++ Objc.arg property "key" make_pointer_from_object
      ++ Objc.arg uniqueID "uniqueID" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method uniqueID =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "uniqueID")[])
       : [`NSObject] Objc.id)
  method setUniqueID (uniqueID : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setUniqueID:")
      [make_pointer_from_object uniqueID]) : unit)
end
