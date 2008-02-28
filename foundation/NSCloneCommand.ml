(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSCloneCommand] id) -> object
  inherit Im_NSCloneCommand.methods
  method repr = r
end

(* Class object for NSCloneCommand *)
let c = Classes.find "NSCloneCommand"
let _new()= (Objc.objcnew c : [`NSCloneCommand] id)
let alloc() = (Objc.objcalloc c : [`NSCloneCommand] id)
