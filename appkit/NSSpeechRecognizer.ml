(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSpeechRecognizer] id) -> object
  inherit Im_NSSpeechRecognizer.methods
  method repr = r
end

(* Class object for NSSpeechRecognizer *)
let c = Classes.find "NSSpeechRecognizer"
let _new()= (Objc.objcnew c : [`NSSpeechRecognizer] id)
let alloc() = (Objc.objcalloc c : [`NSSpeechRecognizer] id)
