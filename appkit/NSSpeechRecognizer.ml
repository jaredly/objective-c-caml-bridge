open Objc
open NSObject


external init : unit -> unit = "caml_init_NSSpeechRecognizer"
let _ = init()
(* Class object for NSSpeechRecognizer *)
let class_NSSpeechRecognizer = object
   val o = Classes.find "NSSpeechRecognizer"
   method _new = (Objc.objcnew o : [`NSSpeechRecognizer] nativeNSObject)
end
(* Encapsulation for native instance of NSSpeechRecognizer *)
class native_NSSpeechRecognizer = fun (o : [`NSSpeechRecognizer] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method startListening =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "startListening:")[]) : unit)
   method stopListening =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "stopListening:")[]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method commands =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "commands:")[]) : [`NSArray] Objc.nativeNSObject)
   method setCommands (commands : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCommands:")[make_pointer_from_object commands]) : unit)
   method displayedCommandsTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "displayedCommandsTitle:")[]) : [`NSString] Objc.nativeNSObject)
   method setDisplayedCommandsTitle (title : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDisplayedCommandsTitle:")[make_pointer_from_object title]) : unit)
   method listensInForegroundOnly =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "listensInForegroundOnly:")[]) : bool)
   method setListensInForegroundOnly (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setListensInForegroundOnly:")[make_bool flag]) : unit)
   method blocksOtherRecognizers =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "blocksOtherRecognizers:")[]) : bool)
   method setBlocksOtherRecognizers (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBlocksOtherRecognizers:")[make_bool flag]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSSpeechRecognizerDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSSpeechRecognizerDelegate *)
   method speechRecognizer  ~didRecognizeCommand:(command : [`NSObject] Objc.t ) (sender : [`NSSpeechRecognizer] Objc.t) =
     let sel, args = (
       Objc.arg sender "speechRecognizer" make_pointer_from_object
       ++ Objc.arg command "didRecognizeCommand" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
