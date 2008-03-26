(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSTextAttachmentCell.methods
end

class t = fun (r :[`NSTextAttachmentCell] id) -> object
  inherit methods
  inherit NSCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTextAttachmentCell *)
let c = Classes.find "NSTextAttachmentCell"
let _new()= (Objc.objcnew c : [`NSTextAttachmentCell] id)
let alloc() = (Objc.objcalloc c : [`NSTextAttachmentCell] id)
