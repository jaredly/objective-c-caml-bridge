(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTextAttachmentCell] id) -> object
  inherit Im_NSTextAttachmentCell.methods
  method repr = r
end

(* Class object for NSTextAttachmentCell *)
let c = Classes.find "NSTextAttachmentCell"
let _new()= (Objc.objcnew c : [`NSTextAttachmentCell] id)
let alloc() = (Objc.objcalloc c : [`NSTextAttachmentCell] id)
