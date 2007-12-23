open Objc
open NSObject
open NSGeometry
open NSRange


external init : unit -> unit = "caml_init_NSInputManager"
let _ = init()
(* Class object for NSInputManager *)
let class_NSInputManager = object
   val o = Classes.find "NSInputManager"
   method _new = (Objc.objcnew o : [`NSInputManager] nativeNSObject)
   method currentInputManager =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentInputManager:")[]) : [`NSInputManager] Objc.nativeNSObject)
   method cycleToNextInputLanguage (sender : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "cycleToNextInputLanguage:")[make_pointer_from_object sender]) : [`NSInputManager] Objc.nativeNSObject)
   method cycleToNextInputServerInLanguage (sender : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "cycleToNextInputServerInLanguage:")[make_pointer_from_object sender]) : [`NSInputManager] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSInputManager *)
class native_NSInputManager = fun (o : [`NSInputManager] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithName  ~host:(hostName : [`NSString] Objc.t ) (inputServerName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg inputServerName "initWithName" make_pointer_from_object
       ++ Objc.arg hostName "host" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSInputManager] Objc.nativeNSObject)
   method localizedInputManagerName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localizedInputManagerName:")[]) : [`NSString] Objc.nativeNSObject)
   method markedTextAbandoned (cli : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "markedTextAbandoned:")[make_pointer_from_object cli]) : unit)
   method markedTextSelectionChanged  ~client:(cli : [`NSObject] Objc.t ) (newSel : int * int) =
     let sel, args = (
       Objc.arg newSel "markedTextSelectionChanged" make_range
       ++ Objc.arg cli "client" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method wantsToInterpretAllKeystrokes =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "wantsToInterpretAllKeystrokes:")[]) : bool)
   method language =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "language:")[]) : [`NSString] Objc.nativeNSObject)
   method image =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "image:")[]) : [`NSImage] Objc.nativeNSObject)
   method server =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "server:")[]) : [`NSInputServer] Objc.nativeNSObject)
   method wantsToHandleMouseEvents =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "wantsToHandleMouseEvents:")[]) : bool)
   method handleMouseEvent (theMouseEvent : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "handleMouseEvent:")[make_pointer_from_object theMouseEvent]) : bool)
   method wantsToDelayTextChangeNotifications =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "wantsToDelayTextChangeNotifications:")[]) : bool)
end
