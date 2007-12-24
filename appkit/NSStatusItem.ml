(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGeometry


external init : unit -> unit = "caml_init_NSStatusItem"
let _ = init()
let make_NSObject_of_NSStatusItem (o : [`NSStatusItem] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSStatusItem *)
let class_NSStatusItem = object
   val repr = Classes.find "NSStatusItem"
   method _new = (Objc.objcnew repr : [`NSStatusItem] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSStatusItem] nativeNSObject)
(* methods for category NSStatusItemView *)
(* methods for category NSStatusItemCommon *)
end
(* Encapsulation for native instance of NSStatusItem *)
class native_NSStatusItem = fun (o : [`NSStatusItem] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSStatusItem o) as super
(* methods for category NSStatusItemView *)
   method view =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "view:")[]) : [`NSView] Objc.nativeNSObject)
   method setView (view : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setView:")[make_pointer_from_object view]) : unit)
(* methods for category NSStatusItemCommon *)
   method action =
     (get_selector (Objc.invoke Objc.tag_selector repr (Selector.find "action:")[]) : selector)
   method setAction (action : selector) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAction:")[make_selector action]) : unit)
   method doubleAction =
     (get_selector (Objc.invoke Objc.tag_selector repr (Selector.find "doubleAction:")[]) : selector)
   method setDoubleAction (action : selector) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDoubleAction:")[make_selector action]) : unit)
   method target =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "target:")[]) : [`NSObject] Objc.nativeNSObject)
   method setTarget (target : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTarget:")[make_pointer_from_object target]) : unit)
   method title =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "title:")[]) : [`NSString] Objc.nativeNSObject)
   method setTitle (title : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitle:")[make_pointer_from_object title]) : unit)
   method attributedTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "attributedTitle:")[]) : [`NSAttributedString] Objc.nativeNSObject)
   method setAttributedTitle (title : [`NSAttributedString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAttributedTitle:")[make_pointer_from_object title]) : unit)
   method image =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "image:")[]) : [`NSImage] Objc.nativeNSObject)
   method setImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImage:")[make_pointer_from_object image]) : unit)
   method alternateImage =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "alternateImage:")[]) : [`NSImage] Objc.nativeNSObject)
   method setAlternateImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAlternateImage:")[make_pointer_from_object image]) : unit)
   method menu =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "menu:")[]) : [`NSMenu] Objc.nativeNSObject)
   method setMenu (menu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMenu:")[make_pointer_from_object menu]) : unit)
   method isEnabled =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEnabled:")[]) : bool)
   method setEnabled (enabled : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setEnabled:")[make_bool enabled]) : unit)
   method toolTip =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toolTip:")[]) : [`NSString] Objc.nativeNSObject)
   method setToolTip (toolTip : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setToolTip:")[make_pointer_from_object toolTip]) : unit)
   method setHighlightMode (highlightMode : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHighlightMode:")[make_bool highlightMode]) : unit)
   method highlightMode =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "highlightMode:")[]) : bool)
   method sendActionOn (mask : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "sendActionOn:")[make_int mask]) : unit)
   method popUpStatusItemMenu (menu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "popUpStatusItemMenu:")[make_pointer_from_object menu]) : unit)
(*  UNSUPPORTED
   method drawStatusBarBackgroundInRect  ~withHighlight:(highlight : bool ) (rect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg rect "drawStatusBarBackgroundInRect" (*NSRect*) unsupported
       ++ Objc.arg highlight "withHighlight" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method statusBar =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "statusBar:")[]) : [`NSStatusBar] Objc.nativeNSObject)
   method length =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "length:")[]) : float)
   method setLength (length : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLength:")[make_float length]) : unit)
end
