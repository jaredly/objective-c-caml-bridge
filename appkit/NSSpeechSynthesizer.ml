(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSpeechSynthesizer.methods
end

class t = fun (r :[`NSSpeechSynthesizer] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSpeechSynthesizer *)
let c = Classes.find "NSSpeechSynthesizer"
let _new()= (Objc.objcnew c : [`NSSpeechSynthesizer] id)
let alloc() = (Objc.objcalloc c : [`NSSpeechSynthesizer] id)
let isAnyApplicationSpeaking () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "isAnyApplicationSpeaking")[])
       : bool)
let defaultVoice () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultVoice")[])
       : [`NSString] Objc.id))
let availableVoices () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "availableVoices")[])
       : [`NSArray] Objc.id))
let attributesForVoice (voice : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "attributesForVoice:")
      [make_pointer_from_object voice]) : [`NSDictionary] Objc.id))
