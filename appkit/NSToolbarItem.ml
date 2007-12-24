(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSUserInterfaceValidation
open NSText
open NSToolbar


external init : unit -> unit = "caml_init_NSToolbarItem"
let _ = init()
(* ENUMS *)
let _NSToolbarItemVisibilityPriorityStandard = 0L
let _NSToolbarItemVisibilityPriorityLow = -1000L
let _NSToolbarItemVisibilityPriorityHigh = 1000L
let _NSToolbarItemVisibilityPriorityUser = 2000L


let make_NSObject_of_NSToolbarItem (o : [`NSToolbarItem] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSToolbarItem *)
let class_NSToolbarItem = object
   val repr = Classes.find "NSToolbarItem"
   method _new = (Objc.objcnew repr : [`NSToolbarItem] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSToolbarItem] nativeNSObject)
end
(* Encapsulation for native instance of NSToolbarItem *)
class native_NSToolbarItem = fun (o : [`NSToolbarItem] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSToolbarItem o) as super
   method initWithItemIdentifier (itemIdentifier : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithItemIdentifier:")[make_pointer_from_object itemIdentifier]) : [`NSObject] Objc.nativeNSObject)
   method itemIdentifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "itemIdentifier:")[]) : [`NSString] Objc.nativeNSObject)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method toolbar =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toolbar:")[]) : [`NSToolbar] Objc.nativeNSObject)

*)
   method setLabel (label : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLabel:")[make_pointer_from_object label]) : unit)
   method label =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "label:")[]) : [`NSString] Objc.nativeNSObject)
   method setPaletteLabel (paletteLabel : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPaletteLabel:")[make_pointer_from_object paletteLabel]) : unit)
   method paletteLabel =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "paletteLabel:")[]) : [`NSString] Objc.nativeNSObject)
   method setToolTip (toolTip : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setToolTip:")[make_pointer_from_object toolTip]) : unit)
   method toolTip =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toolTip:")[]) : [`NSString] Objc.nativeNSObject)
   method setMenuFormRepresentation (menuItem : [`NSMenuItem] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMenuFormRepresentation:")[make_pointer_from_object menuItem]) : unit)
   method menuFormRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "menuFormRepresentation:")[]) : [`NSMenuItem] Objc.nativeNSObject)
   method setTag (tag : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTag:")[make_int tag]) : unit)
   method tag =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "tag:")[]) : int)
   method setTarget (target : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTarget:")[make_pointer_from_object target]) : unit)
   method target =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "target:")[]) : [`NSObject] Objc.nativeNSObject)
   method setAction (action : selector) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAction:")[make_selector action]) : unit)
   method action =
     (get_selector (Objc.invoke Objc.tag_selector repr (Selector.find "action:")[]) : selector)
   method setEnabled (enabled : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setEnabled:")[make_bool enabled]) : unit)
   method isEnabled =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEnabled:")[]) : bool)
   method setImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImage:")[make_pointer_from_object image]) : unit)
   method image =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "image:")[]) : [`NSImage] Objc.nativeNSObject)
   method setView (view : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setView:")[make_pointer_from_object view]) : unit)
   method view =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "view:")[]) : [`NSView] Objc.nativeNSObject)
(*  UNSUPPORTED
   method setMinSize (size : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMinSize:")[(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
   method minSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "minSize:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setMaxSize (size : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMaxSize:")[(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
   method maxSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "maxSize:")[]) : (*NSSize*) unsupported)

*)
   method setVisibilityPriority (visibilityPriority : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setVisibilityPriority:")[make_int visibilityPriority]) : unit)
   method visibilityPriority =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "visibilityPriority:")[]) : int)
   method validate =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "validate:")[]) : unit)
   method setAutovalidates (resistance : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutovalidates:")[make_bool resistance]) : unit)
   method autovalidates =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "autovalidates:")[]) : bool)
   method allowsDuplicatesInToolbar =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsDuplicatesInToolbar:")[]) : bool)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSToolbarItemValidation *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSToolbarItemValidation *)
   method validateToolbarItem (theItem : [`NSToolbarItem] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "validateToolbarItem:")[make_pointer_from_object theItem]) : bool)
end
