(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSTextContainer.methods
end

class t = fun (r :[`NSTextContainer] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTextContainer *)
let c = Classes.find "NSTextContainer"
let _new()= (Objc.objcnew c : [`NSTextContainer] id)
let alloc() = (Objc.objcalloc c : [`NSTextContainer] id)
