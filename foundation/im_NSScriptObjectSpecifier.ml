(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSScriptObjectSpecifier *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithContainerSpecifier_key  (container : [`NSScriptObjectSpecifier] Objc.t) (property : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg container "initWithContainerSpecifier" make_pointer_from_object
      ++ Objc.arg property "key" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContainerClassDescription_containerSpecifier_key  (classDesc : [`NSScriptClassDescription] Objc.t) (container : [`NSScriptObjectSpecifier] Objc.t) (property : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
      ++ Objc.arg container "containerSpecifier" make_pointer_from_object
      ++ Objc.arg property "key" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method childSpecifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "childSpecifier")[])
       : [`NSScriptObjectSpecifier] Objc.id))
  method setChildSpecifier (child : [`NSScriptObjectSpecifier] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setChildSpecifier:")
      [make_pointer_from_object child]) : unit)
  method containerSpecifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "containerSpecifier")[])
       : [`NSScriptObjectSpecifier] Objc.id))
  method setContainerSpecifier (subRef : [`NSScriptObjectSpecifier] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContainerSpecifier:")
      [make_pointer_from_object subRef]) : unit)
  method containerIsObjectBeingTested =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "containerIsObjectBeingTested")[])
       : bool)
  method setContainerIsObjectBeingTested (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContainerIsObjectBeingTested:")
      [make_bool flag]) : unit)
  method containerIsRangeContainerObject =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "containerIsRangeContainerObject")[])
       : bool)
  method setContainerIsRangeContainerObject (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContainerIsRangeContainerObject:")
      [make_bool flag]) : unit)
  method key =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "key")[])
       : [`NSString] Objc.id))
  method setKey (key : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setKey:")
      [make_pointer_from_object key]) : unit)
  method containerClassDescription =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "containerClassDescription")[])
       : [`NSScriptClassDescription] Objc.id))
  method setContainerClassDescription (classDesc : [`NSScriptClassDescription] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContainerClassDescription:")
      [make_pointer_from_object classDesc]) : unit)
  method keyClassDescription =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keyClassDescription")[])
       : [`NSScriptClassDescription] Objc.id))
  method indicesOfObjectsByEvaluatingWithContainer_count  (container : [`NSObject] Objc.t) (count : [`int] Objc.t) =
    let sel, args = (
      Objc.arg container "indicesOfObjectsByEvaluatingWithContainer" make_pointer_from_object
      ++ Objc.arg count "count" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`int] Objc.id))
  method objectsByEvaluatingWithContainers (containers : [`NSObject] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectsByEvaluatingWithContainers:")
      [make_pointer_from_object containers]) : [`NSObject] Objc.id)
  method objectsByEvaluatingSpecifier =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectsByEvaluatingSpecifier")[])
       : [`NSObject] Objc.id)
  method evaluationErrorNumber =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "evaluationErrorNumber")[])
       : int)
  method setEvaluationErrorNumber (error : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEvaluationErrorNumber:")
      [make_int error]) : unit)
  method evaluationErrorSpecifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "evaluationErrorSpecifier")[])
       : [`NSScriptObjectSpecifier] Objc.id))
end
