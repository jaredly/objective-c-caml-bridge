(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTextBlock] id) -> object
  inherit Im_NSTextBlock.methods
  method repr = r
end

(* Class object for NSTextBlock *)
let c = Classes.find "NSTextBlock"
let _new()= (Objc.objcnew c : [`NSTextBlock] id)
let alloc() = (Objc.objcalloc c : [`NSTextBlock] id)
