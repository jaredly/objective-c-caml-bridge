(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSAttachmentCharacter = 65532L


class t = fun (r :[`NSTextAttachment] id) -> object
  inherit Im_NSTextAttachment.methods
  method repr = r
end

(* Class object for NSTextAttachment *)
let c = Classes.find "NSTextAttachment"
let _new()= (Objc.objcnew c : [`NSTextAttachment] id)
let alloc() = (Objc.objcalloc c : [`NSTextAttachment] id)
