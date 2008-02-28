(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSCloseCommand] id) -> object
  inherit Im_NSCloseCommand.methods
  method repr = r
end

(* Class object for NSCloseCommand *)
let c = Classes.find "NSCloseCommand"
let _new()= (Objc.objcnew c : [`NSCloseCommand] id)
let alloc() = (Objc.objcalloc c : [`NSCloseCommand] id)
