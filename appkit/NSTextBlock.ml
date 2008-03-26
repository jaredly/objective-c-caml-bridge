(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSTextBlock.methods
end

class t = fun (r :[`NSTextBlock] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTextBlock *)
let c = Classes.find "NSTextBlock"
let _new()= (Objc.objcnew c : [`NSTextBlock] id)
let alloc() = (Objc.objcalloc c : [`NSTextBlock] id)
