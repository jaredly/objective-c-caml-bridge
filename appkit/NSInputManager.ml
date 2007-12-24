(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGeometry
open NSRange


external init : unit -> unit = "caml_init_NSInputManager"
let _ = init()
let make_NSObject_of_NSInputManager (o : [`NSInputManager] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSInputManager *)
let class_NSInputManager = object
   val repr = Classes.find "NSInputManager"
   method _new = (Objc.objcnew repr : [`NSInputManager] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSInputManager] nativeNSObject)
   method currentInputManager =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "currentInputManager:")[]) : [`NSInputManager] Objc.nativeNSObject)
   method cycleToNextInputLanguage (sender : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "cycleToNextInputLanguage:")[make_pointer_from_object sender]) : [`NSInputManager] Objc.nativeNSObject)
   method cycleToNextInputServerInLanguage (sender : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "cycleToNextInputServerInLanguage:")[make_pointer_from_object sender]) : [`NSInputManager] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSInputManager *)
class native_NSInputManager = fun (o : [`NSInputManager] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSInputManager o) as super
   method initWithName  ~host:(hostName : [`NSString] Objc.t ) (inputServerName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg inputServerName "initWithName" make_pointer_from_object
       ++ Objc.arg hostName "host" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSInputManager] Objc.nativeNSObject)
   method localizedInputManagerName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "localizedInputManagerName:")[]) : [`NSString] Objc.nativeNSObject)
   method markedTextAbandoned (cli : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "markedTextAbandoned:")[make_pointer_from_object cli]) : unit)
   method markedTextSelectionChanged  ~client:(cli : [`NSObject] Objc.t ) (newSel : int * int) =
     let sel, args = (
       Objc.arg newSel "markedTextSelectionChanged" make_range
       ++ Objc.arg cli "client" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method wantsToInterpretAllKeystrokes =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "wantsToInterpretAllKeystrokes:")[]) : bool)
   method language =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "language:")[]) : [`NSString] Objc.nativeNSObject)
   method image =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "image:")[]) : [`NSImage] Objc.nativeNSObject)
   method server =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "server:")[]) : [`NSInputServer] Objc.nativeNSObject)
   method wantsToHandleMouseEvents =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "wantsToHandleMouseEvents:")[]) : bool)
   method handleMouseEvent (theMouseEvent : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "handleMouseEvent:")[make_pointer_from_object theMouseEvent]) : bool)
   method wantsToDelayTextChangeNotifications =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "wantsToDelayTextChangeNotifications:")[]) : bool)
end
