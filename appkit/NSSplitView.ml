open Objc
open NSView


external init : unit -> unit = "caml_init_NSSplitView"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSSplitViewDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSSplitViewDelegate *)
   (* skipping selector splitView:resizeSubviewsWithOldSize *)
   method splitView  ?constrainMinCoordinate:(proposedCoord : float option) ?ofSubviewAt:(offset : int option) (sender : [`NSSplitView] Objc.t) =
     let sel, args = (
       Objc.arg sender "splitView" make_pointer_from_object
       ++ Objc.opt_arg proposedCoord "constrainMinCoordinate" make_float
       ++ Objc.opt_arg offset "ofSubviewAt" make_int
     ) ([],[]) in
       (get_float (Objc.invoke Objc.tag_float o (Selector.find_list sel) args) : float)
   (* skipping selector splitView:constrainMaxCoordinate:ofSubviewAt *)
   method splitViewWillResizeSubviews (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "splitViewWillResizeSubviews:")[make_pointer_from_object notification]) : unit)
   method splitViewDidResizeSubviews (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "splitViewDidResizeSubviews:")[make_pointer_from_object notification]) : unit)
   (* skipping selector splitView:canCollapseSubview *)
   (* skipping selector splitView:constrainSplitPosition:ofSubviewAt *)
end
(* Class object for NSSplitView *)
let class_NSSplitView = object
   val o = Classes.find "NSSplitView"
   method _new = (Objc.objcnew o : [`NSSplitView] nativeNSObject)
end
(* Encapsulation for native instance of NSSplitView *)
class native_NSSplitView = fun (o : [`NSSplitView] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method adjustSubviews =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "adjustSubviews:")[]) : unit)
   method dividerThickness =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "dividerThickness:")[]) : float)
(*  UNSUPPORTED
   method drawDividerInRect (aRect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "drawDividerInRect:")[(*NSRect*) unsupported aRect]) : unit)

*)
   method setVertical (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setVertical:")[make_bool flag]) : unit)
   method isVertical =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isVertical:")[]) : bool)
   method setIsPaneSplitter (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setIsPaneSplitter:")[make_bool flag]) : unit)
   method isPaneSplitter =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isPaneSplitter:")[]) : bool)
   method isSubviewCollapsed (subview : [`NSView] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isSubviewCollapsed:")[make_pointer_from_object subview]) : bool)
end
