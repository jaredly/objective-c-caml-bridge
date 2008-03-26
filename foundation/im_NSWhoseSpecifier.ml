(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSWhoseSpecifier *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithContainerClassDescription_containerSpecifier_key_test  (classDesc : [`NSScriptClassDescription] Objc.t) (container : [`NSScriptObjectSpecifier] Objc.t) (property : [`NSString] Objc.t) (test : [`NSScriptWhoseTest] Objc.t) =
    let sel, args = (
      Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
      ++ Objc.arg container "containerSpecifier" make_pointer_from_object
      ++ Objc.arg property "key" make_pointer_from_object
      ++ Objc.arg test "test" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method test =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "test")[])
       : [`NSScriptWhoseTest] Objc.id))
  method setTest (test : [`NSScriptWhoseTest] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTest:")
      [make_pointer_from_object test]) : unit)
  method startSubelementIdentifier =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "startSubelementIdentifier")[])
       : int)
  method setStartSubelementIdentifier (subelement : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setStartSubelementIdentifier:")
      [make_int subelement]) : unit)
  method startSubelementIndex =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "startSubelementIndex")[])
       : int)
  method setStartSubelementIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setStartSubelementIndex:")
      [make_int index]) : unit)
  method endSubelementIdentifier =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "endSubelementIdentifier")[])
       : int)
  method setEndSubelementIdentifier (subelement : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEndSubelementIdentifier:")
      [make_int subelement]) : unit)
  method endSubelementIndex =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "endSubelementIndex")[])
       : int)
  method setEndSubelementIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEndSubelementIndex:")
      [make_int index]) : unit)
end
