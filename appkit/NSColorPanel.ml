(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSPanel
open NSApplication


external init : unit -> unit = "caml_init_NSColorPanel"
let _ = init()
(* ENUMS *)
let _NSGrayModeColorPanel = 0L
let _NSRGBModeColorPanel = 1L
let _NSCMYKModeColorPanel = 2L
let _NSHSBModeColorPanel = 3L
let _NSCustomPaletteModeColorPanel = 4L
let _NSColorListModeColorPanel = 5L
let _NSWheelModeColorPanel = 6L
let _NSCrayonModeColorPanel = 7L
let _NSColorPanelGrayModeMask = 1L
let _NSColorPanelRGBModeMask = 2L
let _NSColorPanelCMYKModeMask = 4L
let _NSColorPanelHSBModeMask = 8L
let _NSColorPanelCustomPaletteModeMask = 16L
let _NSColorPanelColorListModeMask = 32L
let _NSColorPanelWheelModeMask = 64L
let _NSColorPanelCrayonModeMask = 128L
let _NSColorPanelAllModesMask = 65535L


let make_NSPanel_of_NSColorPanel (o : [`NSColorPanel] nativeNSObject) = (Obj.magic o : [`NSPanel] nativeNSObject)
(* Class object for NSColorPanel *)
let class_NSColorPanel = object
   val repr = Classes.find "NSColorPanel"
   method _new = (Objc.objcnew repr : [`NSColorPanel] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSColorPanel] nativeNSObject)
   method sharedColorPanel =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedColorPanel:")[]) : [`NSColorPanel] Objc.nativeNSObject)
   method sharedColorPanelExists =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedColorPanelExists:")[]) : [`NSColorPanel] Objc.nativeNSObject)
   method dragColor  ~withEvent:(theEvent : [`NSEvent] Objc.t ) ~fromView:(sourceView : [`NSView] Objc.t ) (color : [`NSColor] Objc.t) =
     let sel, args = (
       Objc.arg color "dragColor" make_pointer_from_object
       ++ Objc.arg theEvent "withEvent" make_pointer_from_object
       ++ Objc.arg sourceView "fromView" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSColorPanel] Objc.nativeNSObject)
   method setPickerMask (mask : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setPickerMask:")[make_int mask]) : [`NSColorPanel] Objc.nativeNSObject)
   method setPickerMode (mode : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setPickerMode:")[make_int mode]) : [`NSColorPanel] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSColorPanel *)
class native_NSColorPanel = fun (o : [`NSColorPanel] nativeNSObject) -> object (self)
   inherit native_NSPanel (make_NSPanel_of_NSColorPanel o) as super
   method setAccessoryView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAccessoryView:")[make_pointer_from_object aView]) : unit)
   method accessoryView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "accessoryView:")[]) : [`NSView] Objc.nativeNSObject)
   method setContinuous (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContinuous:")[make_bool flag]) : unit)
   method isContinuous =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isContinuous:")[]) : bool)
   method setShowsAlpha (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShowsAlpha:")[make_bool flag]) : unit)
   method showsAlpha =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "showsAlpha:")[]) : bool)
   method setMode (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMode:")[make_int mode]) : unit)
   method mode =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "mode:")[]) : int)
   method setColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setColor:")[make_pointer_from_object color]) : unit)
   method color =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "color:")[]) : [`NSColor] Objc.nativeNSObject)
   method alpha =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "alpha:")[]) : float)
   method setAction (aSelector : selector) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAction:")[make_selector aSelector]) : unit)
   method setTarget (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTarget:")[make_pointer_from_object anObject]) : unit)
   method attachColorList (colorList : [`NSColorList] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "attachColorList:")[make_pointer_from_object colorList]) : unit)
   method detachColorList (colorList : [`NSColorList] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "detachColorList:")[make_pointer_from_object colorList]) : unit)
end
(* Class object for NSApplication *)
let class_NSApplication = object
   val repr = Classes.find "NSApplication"
   method _new = (Objc.objcnew repr : [`NSApplication] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSApplication] nativeNSObject)
(* methods for category NSColorPanel *)
end
(* Encapsulation for native instance of NSApplication *)
class native_NSApplication = fun (o : [`NSApplication] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSColorPanel *)
   method orderFrontColorPanel (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "orderFrontColorPanel:")[make_pointer_from_object sender]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSColorPanelResponderMethod *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSColorPanelResponderMethod *)
   method changeColor (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "changeColor:")[make_pointer_from_object sender]) : unit)
end
