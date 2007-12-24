(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSRange


external init : unit -> unit = "caml_init_NSSpeechSynthesizer"
let _ = init()
let make_NSObject_of_NSSpeechSynthesizer (o : [`NSSpeechSynthesizer] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSSpeechSynthesizer *)
let class_NSSpeechSynthesizer = object
   val repr = Classes.find "NSSpeechSynthesizer"
   method _new = (Objc.objcnew repr : [`NSSpeechSynthesizer] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSpeechSynthesizer] nativeNSObject)
   method isAnyApplicationSpeaking =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "isAnyApplicationSpeaking:")[]) : [`NSSpeechSynthesizer] Objc.nativeNSObject)
   method defaultVoice =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultVoice:")[]) : [`NSString] Objc.nativeNSObject)
   method availableVoices =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "availableVoices:")[]) : [`NSArray] Objc.nativeNSObject)
   method attributesForVoice (voice : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "attributesForVoice:")[make_pointer_from_object voice]) : [`NSDictionary] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSSpeechSynthesizer *)
class native_NSSpeechSynthesizer = fun (o : [`NSSpeechSynthesizer] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSSpeechSynthesizer o) as super
   method initWithVoice (voice : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithVoice:")[make_pointer_from_object voice]) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector startSpeakingString *)
   method startSpeakingString  ?toURL:(url : [`NSURL] Objc.t option) (string : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg string "startSpeakingString" make_pointer_from_object
       ++ Objc.opt_arg url "toURL" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method stopSpeaking =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "stopSpeaking:")[]) : unit)
   method isSpeaking =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isSpeaking:")[]) : bool)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method voice =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "voice:")[]) : [`NSString] Objc.nativeNSObject)
   method setVoice (voice : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "setVoice:")[make_pointer_from_object voice]) : bool)
   method usesFeedbackWindow =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "usesFeedbackWindow:")[]) : bool)
   method setUsesFeedbackWindow (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setUsesFeedbackWindow:")[make_bool flag]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSSpeechSynthesizerDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSSpeechSynthesizerDelegate *)
   (* skipping selector speechSynthesizer:didFinishSpeaking *)
   method speechSynthesizer  ?willSpeakWord:(characterRange : (int * int) option) ?ofString:(string : [`NSString] Objc.t option) (sender : [`NSSpeechSynthesizer] Objc.t) =
     let sel, args = (
       Objc.arg sender "speechSynthesizer" make_pointer_from_object
       ++ Objc.opt_arg characterRange "willSpeakWord" make_range
       ++ Objc.opt_arg string "ofString" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector speechSynthesizer:willSpeakPhoneme *)
end
