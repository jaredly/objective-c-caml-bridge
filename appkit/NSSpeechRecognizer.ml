(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSSpeechRecognizer"
let _ = init()
let make_NSObject_of_NSSpeechRecognizer (o : [`NSSpeechRecognizer] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSSpeechRecognizer *)
let class_NSSpeechRecognizer = object
   val repr = Classes.find "NSSpeechRecognizer"
   method _new = (Objc.objcnew repr : [`NSSpeechRecognizer] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSpeechRecognizer] nativeNSObject)
end
(* Encapsulation for native instance of NSSpeechRecognizer *)
class native_NSSpeechRecognizer = fun (o : [`NSSpeechRecognizer] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSSpeechRecognizer o) as super
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method startListening =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "startListening:")[]) : unit)
   method stopListening =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "stopListening:")[]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method commands =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "commands:")[]) : [`NSArray] Objc.nativeNSObject)
   method setCommands (commands : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCommands:")[make_pointer_from_object commands]) : unit)
   method displayedCommandsTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "displayedCommandsTitle:")[]) : [`NSString] Objc.nativeNSObject)
   method setDisplayedCommandsTitle (title : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDisplayedCommandsTitle:")[make_pointer_from_object title]) : unit)
   method listensInForegroundOnly =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "listensInForegroundOnly:")[]) : bool)
   method setListensInForegroundOnly (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setListensInForegroundOnly:")[make_bool flag]) : unit)
   method blocksOtherRecognizers =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "blocksOtherRecognizers:")[]) : bool)
   method setBlocksOtherRecognizers (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBlocksOtherRecognizers:")[make_bool flag]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSSpeechRecognizerDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSSpeechRecognizerDelegate *)
   method speechRecognizer  ~didRecognizeCommand:(command : [`NSObject] Objc.t ) (sender : [`NSSpeechRecognizer] Objc.t) =
     let sel, args = (
       Objc.arg sender "speechRecognizer" make_pointer_from_object
       ++ Objc.arg command "didRecognizeCommand" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
