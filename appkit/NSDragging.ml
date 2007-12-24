(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGeometry


external init : unit -> unit = "caml_init_NSDragging"
let _ = init()
(* ENUMS *)
let _NSDragOperationNone = 0L
let _NSDragOperationCopy = 1L
let _NSDragOperationLink = 2L
let _NSDragOperationGeneric = 4L
let _NSDragOperationPrivate = 8L
let _NSDragOperationAll_Obsolete = 15L
let _NSDragOperationMove = 16L
let _NSDragOperationDelete = 32L
(* let_NSDragOperationEvery = ?? *)


(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSDraggingSource *)
(* methods for category NSDraggingDestination *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSDraggingSource *)
(*  UNSUPPORTED
   method draggingSourceOperationMaskForLocal (flag : bool) =
     ((*NSDragOperation*) unsupported (Objc.invoke (*NSDragOperation*) Objc.tag_unsupported repr (Selector.find "draggingSourceOperationMaskForLocal:")[make_bool flag]) : (*NSDragOperation*) unsupported)

*)
   method namesOfPromisedFilesDroppedAtDestination (dropDestination : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "namesOfPromisedFilesDroppedAtDestination:")[make_pointer_from_object dropDestination]) : [`NSArray] Objc.nativeNSObject)
   (* skipping selector draggedImage:beganAt *)
(*  UNSUPPORTED
   method draggedImage  ?endedAt:(screenPoint : (*NSPoint*) unsupported option) ?operation:(operation : (*NSDragOperation*) unsupported option) (image : [`NSImage] Objc.t) =
     let sel, args = (
       Objc.arg image "draggedImage" make_pointer_from_object
       ++ Objc.opt_arg screenPoint "endedAt" (*NSPoint*) unsupported
       ++ Objc.opt_arg operation "operation" (*NSDragOperation*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   (* skipping selector draggedImage:movedTo *)
   method ignoreModifierKeysWhileDragging =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "ignoreModifierKeysWhileDragging:")[]) : bool)
   (* skipping selector draggedImage:endedAt:deposited *)
(* methods for category NSDraggingDestination *)
(*  UNSUPPORTED
   method draggingEntered (sender : [`NSObject] Objc.t) =
     ((*NSDragOperation*) unsupported (Objc.invoke (*NSDragOperation*) Objc.tag_unsupported repr (Selector.find "draggingEntered:")[make_pointer_from_object sender]) : (*NSDragOperation*) unsupported)

*)
(*  UNSUPPORTED
   method draggingUpdated (sender : [`NSObject] Objc.t) =
     ((*NSDragOperation*) unsupported (Objc.invoke (*NSDragOperation*) Objc.tag_unsupported repr (Selector.find "draggingUpdated:")[make_pointer_from_object sender]) : (*NSDragOperation*) unsupported)

*)
   method draggingExited (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "draggingExited:")[make_pointer_from_object sender]) : unit)
   method prepareForDragOperation (sender : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "prepareForDragOperation:")[make_pointer_from_object sender]) : bool)
   method performDragOperation (sender : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "performDragOperation:")[make_pointer_from_object sender]) : bool)
   method concludeDragOperation (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "concludeDragOperation:")[make_pointer_from_object sender]) : unit)
   method draggingEnded (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "draggingEnded:")[make_pointer_from_object sender]) : unit)
   method wantsPeriodicDraggingUpdates =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "wantsPeriodicDraggingUpdates:")[]) : bool)
end
