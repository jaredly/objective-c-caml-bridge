(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSUndoManager"
let _ = init()
(* ENUMS *)
let _NSUndoCloseGroupingRunLoopOrdering = 350000L


let make_NSObject_of_NSUndoManager (o : [`NSUndoManager] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSUndoManager *)
let class_NSUndoManager = object
   val repr = Classes.find "NSUndoManager"
   method _new = (Objc.objcnew repr : [`NSUndoManager] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSUndoManager] nativeNSObject)
end
(* Encapsulation for native instance of NSUndoManager *)
class native_NSUndoManager = fun (o : [`NSUndoManager] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSUndoManager o) as super
   method beginUndoGrouping =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "beginUndoGrouping:")[]) : unit)
   method endUndoGrouping =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "endUndoGrouping:")[]) : unit)
   method groupingLevel =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "groupingLevel:")[]) : int)
   method disableUndoRegistration =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "disableUndoRegistration:")[]) : unit)
   method enableUndoRegistration =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "enableUndoRegistration:")[]) : unit)
   method isUndoRegistrationEnabled =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isUndoRegistrationEnabled:")[]) : bool)
   method groupsByEvent =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "groupsByEvent:")[]) : bool)
   method setGroupsByEvent (groupsByEvent : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setGroupsByEvent:")[make_bool groupsByEvent]) : unit)
   method setLevelsOfUndo (levels : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLevelsOfUndo:")[make_int levels]) : unit)
   method levelsOfUndo =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "levelsOfUndo:")[]) : int)
   method setRunLoopModes (runLoopModes : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRunLoopModes:")[make_pointer_from_object runLoopModes]) : unit)
   method runLoopModes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "runLoopModes:")[]) : [`NSArray] Objc.nativeNSObject)
   method undo =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "undo:")[]) : unit)
   method redo =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "redo:")[]) : unit)
   method undoNestedGroup =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "undoNestedGroup:")[]) : unit)
   method canUndo =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canUndo:")[]) : bool)
   method canRedo =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canRedo:")[]) : bool)
   method isUndoing =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isUndoing:")[]) : bool)
   method isRedoing =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isRedoing:")[]) : bool)
   method removeAllActions =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeAllActions:")[]) : unit)
   method removeAllActionsWithTarget (target : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeAllActionsWithTarget:")[make_pointer_from_object target]) : unit)
   method registerUndoWithTarget  ~selector:(selector : selector ) ~l_object:(anObject : [`NSObject] Objc.t ) (target : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg target "registerUndoWithTarget" make_pointer_from_object
       ++ Objc.arg selector "selector" make_selector
       ++ Objc.arg anObject "l_object" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method prepareWithInvocationTarget (target : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "prepareWithInvocationTarget:")[make_pointer_from_object target]) : [`NSObject] Objc.nativeNSObject)
   method forwardInvocation (anInvocation : [`NSInvocation] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "forwardInvocation:")[make_pointer_from_object anInvocation]) : unit)
   method undoActionName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "undoActionName:")[]) : [`NSString] Objc.nativeNSObject)
   method redoActionName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "redoActionName:")[]) : [`NSString] Objc.nativeNSObject)
   method setActionName (actionName : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setActionName:")[make_pointer_from_object actionName]) : unit)
   method undoMenuItemTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "undoMenuItemTitle:")[]) : [`NSString] Objc.nativeNSObject)
   method redoMenuItemTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "redoMenuItemTitle:")[]) : [`NSString] Objc.nativeNSObject)
   method undoMenuTitleForUndoActionName (actionName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "undoMenuTitleForUndoActionName:")[make_pointer_from_object actionName]) : [`NSString] Objc.nativeNSObject)
   method redoMenuTitleForUndoActionName (actionName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "redoMenuTitleForUndoActionName:")[make_pointer_from_object actionName]) : [`NSString] Objc.nativeNSObject)
end
