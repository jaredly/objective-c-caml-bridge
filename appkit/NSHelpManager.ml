(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSMapTable
open NSGeometry
open NSBundle
open NSApplication


external init : unit -> unit = "caml_init_NSHelpManager"
let _ = init()
let make_NSObject_of_NSHelpManager (o : [`NSHelpManager] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSHelpManager *)
let class_NSHelpManager = object
   val repr = Classes.find "NSHelpManager"
   method _new = (Objc.objcnew repr : [`NSHelpManager] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSHelpManager] nativeNSObject)
   method sharedHelpManager =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedHelpManager:")[]) : [`NSHelpManager] Objc.nativeNSObject)
   method setContextHelpModeActive (active : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setContextHelpModeActive:")[make_bool active]) : [`NSHelpManager] Objc.nativeNSObject)
   method isContextHelpModeActive =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "isContextHelpModeActive:")[]) : [`NSHelpManager] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSHelpManager *)
class native_NSHelpManager = fun (o : [`NSHelpManager] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSHelpManager o) as super
   method setContextHelp  ~forObject:(_object : [`NSObject] Objc.t ) (attrString : [`NSAttributedString] Objc.t) =
     let sel, args = (
       Objc.arg attrString "setContextHelp" make_pointer_from_object
       ++ Objc.arg _object "forObject" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method removeContextHelpForObject (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeContextHelpForObject:")[make_pointer_from_object _object]) : unit)
   method contextHelpForObject (_object : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "contextHelpForObject:")[make_pointer_from_object _object]) : [`NSAttributedString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method showContextHelpForObject  ~locationHint:(pt : (*NSPoint*) unsupported ) (_object : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg _object "showContextHelpForObject" make_pointer_from_object
       ++ Objc.arg pt "locationHint" (*NSPoint*) unsupported
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)

*)
   method openHelpAnchor  ~inBook:(book : [`NSString] Objc.t ) (anchor : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg anchor "openHelpAnchor" make_pointer_from_object
       ++ Objc.arg book "inBook" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method findString  ~inBook:(book : [`NSString] Objc.t ) (query : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg query "findString" make_pointer_from_object
       ++ Objc.arg book "inBook" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
(* Class object for NSBundle *)
let class_NSBundle = object
   val repr = Classes.find "NSBundle"
   method _new = (Objc.objcnew repr : [`NSBundle] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSBundle] nativeNSObject)
(* methods for category NSBundleHelpExtension *)
end
(* Encapsulation for native instance of NSBundle *)
class native_NSBundle = fun (o : [`NSBundle] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSBundleHelpExtension *)
   method contextHelpForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "contextHelpForKey:")[make_pointer_from_object key]) : [`NSAttributedString] Objc.nativeNSObject)
end
(* Class object for NSApplication *)
let class_NSApplication = object
   val repr = Classes.find "NSApplication"
   method _new = (Objc.objcnew repr : [`NSApplication] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSApplication] nativeNSObject)
(* methods for category NSApplicationHelpExtension *)
end
(* Encapsulation for native instance of NSApplication *)
class native_NSApplication = fun (o : [`NSApplication] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSApplicationHelpExtension *)
   method activateContextHelpMode (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "activateContextHelpMode:")[make_pointer_from_object sender]) : unit)
   method showHelp (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "showHelp:")[make_pointer_from_object sender]) : unit)
end
