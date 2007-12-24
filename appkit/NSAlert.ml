(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGraphics


external init : unit -> unit = "caml_init_NSAlert"
let _ = init()
(* ENUMS *)
let _NSAlertFirstButtonReturn = 1000L
let _NSAlertSecondButtonReturn = 1001L
let _NSAlertThirdButtonReturn = 1002L


let make_NSObject_of_NSAlert (o : [`NSAlert] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSAlert *)
let class_NSAlert = object
   val repr = Classes.find "NSAlert"
   method _new = (Objc.objcnew repr : [`NSAlert] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSAlert] nativeNSObject)
   method alertWithError (error : [`NSError] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "alertWithError:")[make_pointer_from_object error]) : [`NSAlert] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSAlert *)
class native_NSAlert = fun (o : [`NSAlert] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSAlert o) as super
   method setMessageText (messageText : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMessageText:")[make_pointer_from_object messageText]) : unit)
   method setInformativeText (informativeText : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setInformativeText:")[make_pointer_from_object informativeText]) : unit)
   method messageText =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "messageText:")[]) : [`NSString] Objc.nativeNSObject)
   method informativeText =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "informativeText:")[]) : [`NSString] Objc.nativeNSObject)
   method setIcon (icon : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIcon:")[make_pointer_from_object icon]) : unit)
   method icon =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "icon:")[]) : [`NSImage] Objc.nativeNSObject)
   method addButtonWithTitle (title : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "addButtonWithTitle:")[make_pointer_from_object title]) : [`NSButton] Objc.nativeNSObject)
   method buttons =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "buttons:")[]) : [`NSArray] Objc.nativeNSObject)
   method setShowsHelp (showsHelp : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShowsHelp:")[make_bool showsHelp]) : unit)
   method showsHelp =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "showsHelp:")[]) : bool)
   method setHelpAnchor (anchor : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHelpAnchor:")[make_pointer_from_object anchor]) : unit)
   method helpAnchor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "helpAnchor:")[]) : [`NSString] Objc.nativeNSObject)
   method setAlertStyle (style : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAlertStyle:")[make_int style]) : unit)
   method alertStyle =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "alertStyle:")[]) : int)
   method setDelegate (delegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object delegate]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method runModal =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "runModal:")[]) : int)
   method beginSheetModalForWindow  ~modalDelegate:(delegate : [`NSObject] Objc.t ) ~didEndSelector:(didEndSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (window : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg window "beginSheetModalForWindow" make_pointer_from_object
       ++ Objc.arg delegate "modalDelegate" make_pointer_from_object
       ++ Objc.arg didEndSelector "didEndSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method window =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "window:")[]) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSAlertDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSAlertDelegate *)
   method alertShowHelp (alert : [`NSAlert] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "alertShowHelp:")[make_pointer_from_object alert]) : bool)
end
