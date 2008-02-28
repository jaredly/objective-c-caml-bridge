(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTextTab] id) -> object
  inherit Im_NSTextTab.methods
  method repr = r
end

(* Class object for NSTextTab *)
let c = Classes.find "NSTextTab"
let _new()= (Objc.objcnew c : [`NSTextTab] id)
let alloc() = (Objc.objcalloc c : [`NSTextTab] id)
