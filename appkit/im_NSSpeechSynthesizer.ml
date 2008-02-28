(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSpeechSynthesizer *)
class virtual methods = object (self)
  method virtual repr : [`NSSpeechSynthesizer] Objc.id
  method initWithVoice (voice : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithVoice:")
      [make_pointer_from_object voice]) : [`NSObject] Objc.id)
  (* skipping selector startSpeakingString *)
  method startSpeakingString  ?toURL:(url : [`NSURL] Objc.t option) (string : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg string "startSpeakingString" make_pointer_from_object
      ++ Objc.opt_arg url "toURL" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method stopSpeaking =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stopSpeaking")[])
       : unit)
  method isSpeaking =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSpeaking")[])
       : bool)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method voice =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "voice")[])
       : [`NSString] Objc.id))
  method setVoice (voice : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "setVoice:")
      [make_pointer_from_object voice]) : bool)
  method usesFeedbackWindow =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "usesFeedbackWindow")[])
       : bool)
  method setUsesFeedbackWindow (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setUsesFeedbackWindow:")
      [make_bool flag]) : unit)
end
