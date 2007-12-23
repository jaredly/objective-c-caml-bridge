open Objc
open NSPanel
open NSApplication


external init : unit -> unit = "caml_init_NSColorPanel"
let _ = init()
(* Class object for NSApplication *)
let class_NSApplication = object
   val o = Classes.find "NSApplication"
   method _new = (Objc.objcnew o : [`NSApplication] nativeNSObject)
(* methods for category NSColorPanel *)
end
(* Encapsulation for native instance of NSApplication *)
class native_NSApplication = fun (o : [`NSApplication] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSColorPanel *)
   method orderFrontColorPanel (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "orderFrontColorPanel:")[make_pointer_from_object sender]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSColorPanelResponderMethod *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSColorPanelResponderMethod *)
   method changeColor (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "changeColor:")[make_pointer_from_object sender]) : unit)
end
(* Class object for NSColorPanel *)
let class_NSColorPanel = object
   val o = Classes.find "NSColorPanel"
   method _new = (Objc.objcnew o : [`NSColorPanel] nativeNSObject)
   method sharedColorPanel =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedColorPanel:")[]) : [`NSColorPanel] Objc.nativeNSObject)
   method sharedColorPanelExists =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedColorPanelExists:")[]) : [`NSColorPanel] Objc.nativeNSObject)
   method dragColor  ~withEvent:(theEvent : [`NSEvent] Objc.t ) ~fromView:(sourceView : [`NSView] Objc.t ) (color : [`NSColor] Objc.t) =
     let sel, args = (
       Objc.arg color "dragColor" make_pointer_from_object
       ++ Objc.arg theEvent "withEvent" make_pointer_from_object
       ++ Objc.arg sourceView "fromView" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSColorPanel] Objc.nativeNSObject)
   method setPickerMask (mask : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setPickerMask:")[make_int mask]) : [`NSColorPanel] Objc.nativeNSObject)
   method setPickerMode (mode : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setPickerMode:")[make_int mode]) : [`NSColorPanel] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSColorPanel *)
class native_NSColorPanel = fun (o : [`NSColorPanel] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setAccessoryView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAccessoryView:")[make_pointer_from_object aView]) : unit)
   method accessoryView =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "accessoryView:")[]) : [`NSView] Objc.nativeNSObject)
   method setContinuous (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setContinuous:")[make_bool flag]) : unit)
   method isContinuous =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isContinuous:")[]) : bool)
   method setShowsAlpha (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setShowsAlpha:")[make_bool flag]) : unit)
   method showsAlpha =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "showsAlpha:")[]) : bool)
   method setMode (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMode:")[make_int mode]) : unit)
   method mode =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "mode:")[]) : int)
   method setColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setColor:")[make_pointer_from_object color]) : unit)
   method color =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "color:")[]) : [`NSColor] Objc.nativeNSObject)
   method alpha =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "alpha:")[]) : float)
   method setAction (aSelector : selector) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAction:")[make_selector aSelector]) : unit)
   method setTarget (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTarget:")[make_pointer_from_object anObject]) : unit)
   method attachColorList (colorList : [`NSColorList] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "attachColorList:")[make_pointer_from_object colorList]) : unit)
   method detachColorList (colorList : [`NSColorList] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "detachColorList:")[make_pointer_from_object colorList]) : unit)
end
