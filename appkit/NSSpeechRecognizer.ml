(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSpeechRecognizer.methods
end

class t = fun (r :[`NSSpeechRecognizer] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSpeechRecognizer *)
let c = Classes.find "NSSpeechRecognizer"
let _new()= (Objc.objcnew c : [`NSSpeechRecognizer] id)
let alloc() = (Objc.objcalloc c : [`NSSpeechRecognizer] id)
