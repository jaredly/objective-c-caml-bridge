(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSView


external init : unit -> unit = "caml_init_NSSplitView"
let _ = init()
let make_NSView_of_NSSplitView (o : [`NSSplitView] nativeNSObject) = (Obj.magic o : [`NSView] nativeNSObject)
(* Class object for NSSplitView *)
let class_NSSplitView = object
   val repr = Classes.find "NSSplitView"
   method _new = (Objc.objcnew repr : [`NSSplitView] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSplitView] nativeNSObject)
end
(* Encapsulation for native instance of NSSplitView *)
class native_NSSplitView = fun (o : [`NSSplitView] nativeNSObject) -> object (self)
   inherit native_NSView (make_NSView_of_NSSplitView o) as super
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method adjustSubviews =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "adjustSubviews:")[]) : unit)
   method dividerThickness =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "dividerThickness:")[]) : float)
(*  UNSUPPORTED
   method drawDividerInRect (aRect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawDividerInRect:")[(*NSRect*) unsupported aRect]) : unit)

*)
   method setVertical (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setVertical:")[make_bool flag]) : unit)
   method isVertical =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isVertical:")[]) : bool)
   method setIsPaneSplitter (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIsPaneSplitter:")[make_bool flag]) : unit)
   method isPaneSplitter =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isPaneSplitter:")[]) : bool)
   method isSubviewCollapsed (subview : [`NSView] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isSubviewCollapsed:")[make_pointer_from_object subview]) : bool)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSSplitViewDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSSplitViewDelegate *)
   (* skipping selector splitView:resizeSubviewsWithOldSize *)
   method splitView  ?constrainMinCoordinate:(proposedCoord : float option) ?ofSubviewAt:(offset : int option) (sender : [`NSSplitView] Objc.t) =
     let sel, args = (
       Objc.arg sender "splitView" make_pointer_from_object
       ++ Objc.opt_arg proposedCoord "constrainMinCoordinate" make_float
       ++ Objc.opt_arg offset "ofSubviewAt" make_int
     ) ([],[]) in
       (get_float (Objc.invoke Objc.tag_float repr (Selector.find_list sel) args) : float)
   (* skipping selector splitView:constrainMaxCoordinate:ofSubviewAt *)
   method splitViewWillResizeSubviews (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "splitViewWillResizeSubviews:")[make_pointer_from_object notification]) : unit)
   method splitViewDidResizeSubviews (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "splitViewDidResizeSubviews:")[make_pointer_from_object notification]) : unit)
   (* skipping selector splitView:canCollapseSubview *)
   (* skipping selector splitView:constrainSplitPosition:ofSubviewAt *)
end
