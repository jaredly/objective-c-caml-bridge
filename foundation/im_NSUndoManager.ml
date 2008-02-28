(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSUndoManager *)
class virtual methods = object (self)
  method virtual repr : [`NSUndoManager] Objc.id
  method beginUndoGrouping =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "beginUndoGrouping")[])
       : unit)
  method endUndoGrouping =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "endUndoGrouping")[])
       : unit)
  method groupingLevel =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "groupingLevel")[])
       : int)
  method disableUndoRegistration =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "disableUndoRegistration")[])
       : unit)
  method enableUndoRegistration =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "enableUndoRegistration")[])
       : unit)
  method isUndoRegistrationEnabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isUndoRegistrationEnabled")[])
       : bool)
  method groupsByEvent =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "groupsByEvent")[])
       : bool)
  method setGroupsByEvent (groupsByEvent : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setGroupsByEvent:")
      [make_bool groupsByEvent]) : unit)
  method setLevelsOfUndo (levels : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLevelsOfUndo:")
      [make_int levels]) : unit)
  method levelsOfUndo =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "levelsOfUndo")[])
       : int)
  method setRunLoopModes (runLoopModes : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRunLoopModes:")
      [make_pointer_from_object runLoopModes]) : unit)
  method runLoopModes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "runLoopModes")[])
       : [`NSArray] Objc.id))
  method undo =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "undo")[])
       : unit)
  method redo =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "redo")[])
       : unit)
  method undoNestedGroup =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "undoNestedGroup")[])
       : unit)
  method canUndo =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canUndo")[])
       : bool)
  method canRedo =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canRedo")[])
       : bool)
  method isUndoing =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isUndoing")[])
       : bool)
  method isRedoing =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isRedoing")[])
       : bool)
  method removeAllActions =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeAllActions")[])
       : unit)
  method removeAllActionsWithTarget (target : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeAllActionsWithTarget:")
      [make_pointer_from_object target]) : unit)
  method registerUndoWithTarget  ~selector:(selector : selector ) ~l_object:(anObject : [`NSObject] Objc.t ) (target : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg target "registerUndoWithTarget" make_pointer_from_object
      ++ Objc.arg selector "selector" make_selector
      ++ Objc.arg anObject "l_object" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method prepareWithInvocationTarget (target : [`NSObject] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "prepareWithInvocationTarget:")
      [make_pointer_from_object target]) : [`NSObject] Objc.id)
  method forwardInvocation (anInvocation : [`NSInvocation] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "forwardInvocation:")
      [make_pointer_from_object anInvocation]) : unit)
  method undoActionName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "undoActionName")[])
       : [`NSString] Objc.id))
  method redoActionName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "redoActionName")[])
       : [`NSString] Objc.id))
  method setActionName (actionName : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setActionName:")
      [make_pointer_from_object actionName]) : unit)
  method undoMenuItemTitle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "undoMenuItemTitle")[])
       : [`NSString] Objc.id))
  method redoMenuItemTitle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "redoMenuItemTitle")[])
       : [`NSString] Objc.id))
  method undoMenuTitleForUndoActionName (actionName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "undoMenuTitleForUndoActionName:")
      [make_pointer_from_object actionName]) : [`NSString] Objc.id))
  method redoMenuTitleForUndoActionName (actionName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "redoMenuTitleForUndoActionName:")
      [make_pointer_from_object actionName]) : [`NSString] Objc.id))
end
