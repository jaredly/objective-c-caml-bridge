open Objc
open NSObject
open NSRange


external init : unit -> unit = "caml_init_NSSpeechSynthesizer"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSSpeechSynthesizerDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSSpeechSynthesizerDelegate *)
   (* skipping selector speechSynthesizer:didFinishSpeaking *)
   method speechSynthesizer  ?willSpeakWord:(characterRange : (int * int) option) ?ofString:(string : [`NSString] Objc.t option) (sender : [`NSSpeechSynthesizer] Objc.t) =
     let sel, args = (
       Objc.arg sender "speechSynthesizer" make_pointer_from_object
       ++ Objc.opt_arg characterRange "willSpeakWord" make_range
       ++ Objc.opt_arg string "ofString" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   (* skipping selector speechSynthesizer:willSpeakPhoneme *)
end
(* Class object for NSSpeechSynthesizer *)
let class_NSSpeechSynthesizer = object
   val o = Classes.find "NSSpeechSynthesizer"
   method _new = (Objc.objcnew o : [`NSSpeechSynthesizer] nativeNSObject)
   method isAnyApplicationSpeaking =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "isAnyApplicationSpeaking:")[]) : [`NSSpeechSynthesizer] Objc.nativeNSObject)
   method defaultVoice =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultVoice:")[]) : [`NSString] Objc.nativeNSObject)
   method availableVoices =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "availableVoices:")[]) : [`NSArray] Objc.nativeNSObject)
   method attributesForVoice (voice : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attributesForVoice:")[make_pointer_from_object voice]) : [`NSDictionary] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSSpeechSynthesizer *)
class native_NSSpeechSynthesizer = fun (o : [`NSSpeechSynthesizer] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithVoice (voice : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithVoice:")[make_pointer_from_object voice]) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector startSpeakingString *)
   method startSpeakingString  ?toURL:(url : [`NSURL] Objc.t option) (string : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg string "startSpeakingString" make_pointer_from_object
       ++ Objc.opt_arg url "toURL" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method stopSpeaking =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "stopSpeaking:")[]) : unit)
   method isSpeaking =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isSpeaking:")[]) : bool)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method voice =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "voice:")[]) : [`NSString] Objc.nativeNSObject)
   method setVoice (voice : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "setVoice:")[make_pointer_from_object voice]) : bool)
   method usesFeedbackWindow =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "usesFeedbackWindow:")[]) : bool)
   method setUsesFeedbackWindow (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setUsesFeedbackWindow:")[make_bool flag]) : unit)
end
