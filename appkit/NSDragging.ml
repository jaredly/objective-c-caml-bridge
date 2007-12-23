open Objc
open NSObject
open NSGeometry


external init : unit -> unit = "caml_init_NSDragging"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSDraggingSource *)
(* methods for category NSDraggingDestination *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSDraggingSource *)
(*  UNSUPPORTED
   method draggingSourceOperationMaskForLocal (flag : bool) =
     ((*NSDragOperation*) unsupported (Objc.invoke (*NSDragOperation*) Objc.tag_unsupported o (Selector.find "draggingSourceOperationMaskForLocal:")[make_bool flag]) : (*NSDragOperation*) unsupported)

*)
   method namesOfPromisedFilesDroppedAtDestination (dropDestination : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "namesOfPromisedFilesDroppedAtDestination:")[make_pointer_from_object dropDestination]) : [`NSArray] Objc.nativeNSObject)
   (* skipping selector draggedImage:beganAt *)
(*  UNSUPPORTED
   method draggedImage  ?endedAt:(screenPoint : (*NSPoint*) unsupported option) ?operation:(operation : (*NSDragOperation*) unsupported option) (image : [`NSImage] Objc.t) =
     let sel, args = (
       Objc.arg image "draggedImage" make_pointer_from_object
       ++ Objc.opt_arg screenPoint "endedAt" (*NSPoint*) unsupported
       ++ Objc.opt_arg operation "operation" (*NSDragOperation*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   (* skipping selector draggedImage:movedTo *)
   method ignoreModifierKeysWhileDragging =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "ignoreModifierKeysWhileDragging:")[]) : bool)
   (* skipping selector draggedImage:endedAt:deposited *)
(* methods for category NSDraggingDestination *)
(*  UNSUPPORTED
   method draggingEntered (sender : [`NSObject] Objc.t) =
     ((*NSDragOperation*) unsupported (Objc.invoke (*NSDragOperation*) Objc.tag_unsupported o (Selector.find "draggingEntered:")[make_pointer_from_object sender]) : (*NSDragOperation*) unsupported)

*)
(*  UNSUPPORTED
   method draggingUpdated (sender : [`NSObject] Objc.t) =
     ((*NSDragOperation*) unsupported (Objc.invoke (*NSDragOperation*) Objc.tag_unsupported o (Selector.find "draggingUpdated:")[make_pointer_from_object sender]) : (*NSDragOperation*) unsupported)

*)
   method draggingExited (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "draggingExited:")[make_pointer_from_object sender]) : unit)
   method prepareForDragOperation (sender : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "prepareForDragOperation:")[make_pointer_from_object sender]) : bool)
   method performDragOperation (sender : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "performDragOperation:")[make_pointer_from_object sender]) : bool)
   method concludeDragOperation (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "concludeDragOperation:")[make_pointer_from_object sender]) : unit)
   method draggingEnded (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "draggingEnded:")[make_pointer_from_object sender]) : unit)
   method wantsPeriodicDraggingUpdates =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "wantsPeriodicDraggingUpdates:")[]) : bool)
end
