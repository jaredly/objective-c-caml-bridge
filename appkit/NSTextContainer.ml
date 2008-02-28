(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTextContainer] id) -> object
  inherit Im_NSTextContainer.methods
  method repr = r
end

(* Class object for NSTextContainer *)
let c = Classes.find "NSTextContainer"
let _new()= (Objc.objcnew c : [`NSTextContainer] id)
let alloc() = (Objc.objcalloc c : [`NSTextContainer] id)
