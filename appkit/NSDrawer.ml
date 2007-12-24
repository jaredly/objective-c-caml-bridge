(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGeometry
open NSResponder
open NSWindow


external init : unit -> unit = "caml_init_NSDrawer"
let _ = init()
let make_NSResponder_of_NSDrawer (o : [`NSDrawer] nativeNSObject) = (Obj.magic o : [`NSResponder] nativeNSObject)
(* Class object for NSDrawer *)
let class_NSDrawer = object
   val repr = Classes.find "NSDrawer"
   method _new = (Objc.objcnew repr : [`NSDrawer] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSDrawer] nativeNSObject)
end
(* Encapsulation for native instance of NSDrawer *)
class native_NSDrawer = fun (o : [`NSDrawer] nativeNSObject) -> object (self)
   inherit native_NSResponder (make_NSResponder_of_NSDrawer o) as super
(*  UNSUPPORTED
   method initWithContentSize  ~preferredEdge:(edge : (*NSRectEdge*) unsupported ) (contentSize : (*NSSize*) unsupported) =
     let sel, args = (
       Objc.arg contentSize "initWithContentSize" (*NSSize*) unsupported
       ++ Objc.arg edge "preferredEdge" (*NSRectEdge*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method setParentWindow (parent : [`NSWindow] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setParentWindow:")[make_pointer_from_object parent]) : unit)
   method parentWindow =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "parentWindow:")[]) : [`NSWindow] Objc.nativeNSObject)
   method setContentView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContentView:")[make_pointer_from_object aView]) : unit)
   method contentView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "contentView:")[]) : [`NSView] Objc.nativeNSObject)
(*  UNSUPPORTED
   method setPreferredEdge (edge : (*NSRectEdge*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPreferredEdge:")[(*NSRectEdge*) unsupported edge]) : unit)

*)
(*  UNSUPPORTED
   method preferredEdge =
     ((*NSRectEdge*) unsupported (Objc.invoke (*NSRectEdge*) Objc.tag_unsupported repr (Selector.find "preferredEdge:")[]) : (*NSRectEdge*) unsupported)

*)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector open *)
(*  UNSUPPORTED
   method openOnEdge (edge : (*NSRectEdge*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "openOnEdge:")[(*NSRectEdge*) unsupported edge]) : unit)

*)
   (* skipping selector close *)
   method open_ (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "open:")[make_pointer_from_object sender]) : unit)
   method close (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "close:")[make_pointer_from_object sender]) : unit)
   method toggle (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "toggle:")[make_pointer_from_object sender]) : unit)
   method state =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "state:")[]) : int)
(*  UNSUPPORTED
   method edge =
     ((*NSRectEdge*) unsupported (Objc.invoke (*NSRectEdge*) Objc.tag_unsupported repr (Selector.find "edge:")[]) : (*NSRectEdge*) unsupported)

*)
(*  UNSUPPORTED
   method setContentSize (size : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContentSize:")[(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
   method contentSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "contentSize:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setMinContentSize (size : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMinContentSize:")[(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
   method minContentSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "minContentSize:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setMaxContentSize (size : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMaxContentSize:")[(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
   method maxContentSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "maxContentSize:")[]) : (*NSSize*) unsupported)

*)
   method setLeadingOffset (offset : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLeadingOffset:")[make_float offset]) : unit)
   method leadingOffset =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "leadingOffset:")[]) : float)
   method setTrailingOffset (offset : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTrailingOffset:")[make_float offset]) : unit)
   method trailingOffset =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "trailingOffset:")[]) : float)
end
(* Class object for NSWindow *)
let class_NSWindow = object
   val repr = Classes.find "NSWindow"
   method _new = (Objc.objcnew repr : [`NSWindow] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSWindow] nativeNSObject)
(* methods for category Drawers *)
end
(* Encapsulation for native instance of NSWindow *)
class native_NSWindow = fun (o : [`NSWindow] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category Drawers *)
   method drawers =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "drawers:")[]) : [`NSArray] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSDrawerDelegate *)
(* methods for category NSDrawerNotifications *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSDrawerDelegate *)
   method drawerShouldOpen (sender : [`NSDrawer] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "drawerShouldOpen:")[make_pointer_from_object sender]) : bool)
   method drawerShouldClose (sender : [`NSDrawer] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "drawerShouldClose:")[make_pointer_from_object sender]) : bool)
(*  UNSUPPORTED
   method drawerWillResizeContents  ~toSize:(contentSize : (*NSSize*) unsupported ) (sender : [`NSDrawer] Objc.t) =
     let sel, args = (
       Objc.arg sender "drawerWillResizeContents" make_pointer_from_object
       ++ Objc.arg contentSize "toSize" (*NSSize*) unsupported
     ) ([],[]) in
       ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSSize*) unsupported)

*)
(* methods for category NSDrawerNotifications *)
   method drawerWillOpen (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawerWillOpen:")[make_pointer_from_object notification]) : unit)
   method drawerDidOpen (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawerDidOpen:")[make_pointer_from_object notification]) : unit)
   method drawerWillClose (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawerWillClose:")[make_pointer_from_object notification]) : unit)
   method drawerDidClose (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawerDidClose:")[make_pointer_from_object notification]) : unit)
end
