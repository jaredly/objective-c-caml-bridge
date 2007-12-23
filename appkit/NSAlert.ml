open Objc
open NSObject
open NSGraphics


external init : unit -> unit = "caml_init_NSAlert"
let _ = init()
(* Class object for NSAlert *)
let class_NSAlert = object
   val o = Classes.find "NSAlert"
   method _new = (Objc.objcnew o : [`NSAlert] nativeNSObject)
   method alertWithError (error : [`NSError] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "alertWithError:")[make_pointer_from_object error]) : [`NSAlert] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSAlert *)
class native_NSAlert = fun (o : [`NSAlert] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setMessageText (messageText : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMessageText:")[make_pointer_from_object messageText]) : unit)
   method setInformativeText (informativeText : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setInformativeText:")[make_pointer_from_object informativeText]) : unit)
   method messageText =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "messageText:")[]) : [`NSString] Objc.nativeNSObject)
   method informativeText =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "informativeText:")[]) : [`NSString] Objc.nativeNSObject)
   method setIcon (icon : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setIcon:")[make_pointer_from_object icon]) : unit)
   method icon =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "icon:")[]) : [`NSImage] Objc.nativeNSObject)
   method addButtonWithTitle (title : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "addButtonWithTitle:")[make_pointer_from_object title]) : [`NSButton] Objc.nativeNSObject)
   method buttons =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "buttons:")[]) : [`NSArray] Objc.nativeNSObject)
   method setShowsHelp (showsHelp : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setShowsHelp:")[make_bool showsHelp]) : unit)
   method showsHelp =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "showsHelp:")[]) : bool)
   method setHelpAnchor (anchor : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHelpAnchor:")[make_pointer_from_object anchor]) : unit)
   method helpAnchor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "helpAnchor:")[]) : [`NSString] Objc.nativeNSObject)
   method setAlertStyle (style : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAlertStyle:")[make_int style]) : unit)
   method alertStyle =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "alertStyle:")[]) : int)
   method setDelegate (delegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object delegate]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method runModal =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "runModal:")[]) : int)
   method beginSheetModalForWindow  ~modalDelegate:(delegate : [`NSObject] Objc.t ) ~didEndSelector:(didEndSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (window : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg window "beginSheetModalForWindow" make_pointer_from_object
       ++ Objc.arg delegate "modalDelegate" make_pointer_from_object
       ++ Objc.arg didEndSelector "didEndSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method window =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "window:")[]) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSAlertDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSAlertDelegate *)
   method alertShowHelp (alert : [`NSAlert] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "alertShowHelp:")[make_pointer_from_object alert]) : bool)
end
