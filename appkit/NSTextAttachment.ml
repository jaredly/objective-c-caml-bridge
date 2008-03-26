(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSAttachmentCharacter = 65532L


class virtual methods = object
  inherit Im_NSTextAttachment.methods
end

class t = fun (r :[`NSTextAttachment] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTextAttachment *)
let c = Classes.find "NSTextAttachment"
let _new()= (Objc.objcnew c : [`NSTextAttachment] id)
let alloc() = (Objc.objcalloc c : [`NSTextAttachment] id)
