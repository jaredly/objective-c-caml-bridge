open Objc
open NSObject


external init : unit -> unit = "caml_init_NSUndoManager"
let _ = init()
(* Class object for NSUndoManager *)
let class_NSUndoManager = object
   val o = Classes.find "NSUndoManager"
   method _new = (Objc.objcnew o : [`NSUndoManager] nativeNSObject)
end
(* Encapsulation for native instance of NSUndoManager *)
class native_NSUndoManager = fun (o : [`NSUndoManager] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method beginUndoGrouping =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "beginUndoGrouping:")[]) : unit)
   method endUndoGrouping =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "endUndoGrouping:")[]) : unit)
   method groupingLevel =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "groupingLevel:")[]) : int)
   method disableUndoRegistration =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "disableUndoRegistration:")[]) : unit)
   method enableUndoRegistration =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "enableUndoRegistration:")[]) : unit)
   method isUndoRegistrationEnabled =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isUndoRegistrationEnabled:")[]) : bool)
   method groupsByEvent =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "groupsByEvent:")[]) : bool)
   method setGroupsByEvent (groupsByEvent : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setGroupsByEvent:")[make_bool groupsByEvent]) : unit)
   method setLevelsOfUndo (levels : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLevelsOfUndo:")[make_int levels]) : unit)
   method levelsOfUndo =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "levelsOfUndo:")[]) : int)
   method setRunLoopModes (runLoopModes : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRunLoopModes:")[make_pointer_from_object runLoopModes]) : unit)
   method runLoopModes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "runLoopModes:")[]) : [`NSArray] Objc.nativeNSObject)
   method undo =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "undo:")[]) : unit)
   method redo =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "redo:")[]) : unit)
   method undoNestedGroup =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "undoNestedGroup:")[]) : unit)
   method canUndo =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "canUndo:")[]) : bool)
   method canRedo =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "canRedo:")[]) : bool)
   method isUndoing =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isUndoing:")[]) : bool)
   method isRedoing =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isRedoing:")[]) : bool)
   method removeAllActions =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeAllActions:")[]) : unit)
   method removeAllActionsWithTarget (target : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeAllActionsWithTarget:")[make_pointer_from_object target]) : unit)
   method registerUndoWithTarget  ~selector:(selector : selector ) ~l_object:(anObject : [`NSObject] Objc.t ) (target : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg target "registerUndoWithTarget" make_pointer_from_object
       ++ Objc.arg selector "selector" make_selector
       ++ Objc.arg anObject "l_object" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method prepareWithInvocationTarget (target : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "prepareWithInvocationTarget:")[make_pointer_from_object target]) : [`NSObject] Objc.nativeNSObject)
   method forwardInvocation (anInvocation : [`NSInvocation] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "forwardInvocation:")[make_pointer_from_object anInvocation]) : unit)
   method undoActionName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "undoActionName:")[]) : [`NSString] Objc.nativeNSObject)
   method redoActionName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "redoActionName:")[]) : [`NSString] Objc.nativeNSObject)
   method setActionName (actionName : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setActionName:")[make_pointer_from_object actionName]) : unit)
   method undoMenuItemTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "undoMenuItemTitle:")[]) : [`NSString] Objc.nativeNSObject)
   method redoMenuItemTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "redoMenuItemTitle:")[]) : [`NSString] Objc.nativeNSObject)
   method undoMenuTitleForUndoActionName (actionName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "undoMenuTitleForUndoActionName:")[make_pointer_from_object actionName]) : [`NSString] Objc.nativeNSObject)
   method redoMenuTitleForUndoActionName (actionName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "redoMenuTitleForUndoActionName:")[make_pointer_from_object actionName]) : [`NSString] Objc.nativeNSObject)
end
