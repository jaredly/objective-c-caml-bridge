(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSInputManager] id) -> object
  inherit Im_NSInputManager.methods
  method repr = r
end

(* Class object for NSInputManager *)
let c = Classes.find "NSInputManager"
let _new()= (Objc.objcnew c : [`NSInputManager] id)
let alloc() = (Objc.objcalloc c : [`NSInputManager] id)
let currentInputManager () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentInputManager")[])
       : [`NSInputManager] Objc.id))
let cycleToNextInputLanguage (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "cycleToNextInputLanguage:")
      [make_pointer_from_object sender]) : unit)
let cycleToNextInputServerInLanguage (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "cycleToNextInputServerInLanguage:")
      [make_pointer_from_object sender]) : unit)
