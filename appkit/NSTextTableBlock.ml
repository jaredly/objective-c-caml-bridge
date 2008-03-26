(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSTextTableBlock.methods
end

class t = fun (r :[`NSTextTableBlock] id) -> object
  inherit methods
  inherit NSTextBlock.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTextTableBlock *)
let c = Classes.find "NSTextTableBlock"
let _new()= (Objc.objcnew c : [`NSTextTableBlock] id)
let alloc() = (Objc.objcalloc c : [`NSTextTableBlock] id)
