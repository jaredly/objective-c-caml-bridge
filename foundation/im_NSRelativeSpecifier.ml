(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSRelativeSpecifier *)
class virtual methods = object (self)
  method virtual repr : [`NSRelativeSpecifier] Objc.id
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method initWithContainerClassDescription  ~containerSpecifier:(container : [`NSScriptObjectSpecifier] Objc.t ) ~key:(property : [`NSString] Objc.t ) ~relativePosition:(relPos : int ) ~baseSpecifier:(baseSpecifier : [`NSScriptObjectSpecifier] Objc.t ) (classDesc : [`NSScriptClassDescription] Objc.t) =
    let sel, args = (
      Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
      ++ Objc.arg container "containerSpecifier" make_pointer_from_object
      ++ Objc.arg property "key" make_pointer_from_object
      ++ Objc.arg relPos "relativePosition" make_int
      ++ Objc.arg baseSpecifier "baseSpecifier" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method relativePosition =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "relativePosition")[])
       : int)
  method setRelativePosition (relPos : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRelativePosition:")
      [make_int relPos]) : unit)
  method baseSpecifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "baseSpecifier")[])
       : [`NSScriptObjectSpecifier] Objc.id))
  method setBaseSpecifier (baseSpecifier : [`NSScriptObjectSpecifier] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBaseSpecifier:")
      [make_pointer_from_object baseSpecifier]) : unit)
end
