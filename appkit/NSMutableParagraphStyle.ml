(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMutableParagraphStyle] id) -> object
  inherit Im_NSMutableParagraphStyle.methods
  method repr = r
end

(* Class object for NSMutableParagraphStyle *)
let c = Classes.find "NSMutableParagraphStyle"
let _new()= (Objc.objcnew c : [`NSMutableParagraphStyle] id)
let alloc() = (Objc.objcalloc c : [`NSMutableParagraphStyle] id)
