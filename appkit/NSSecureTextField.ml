(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSecureTextField.methods
end

class t = fun (r :[`NSSecureTextField] id) -> object
  inherit methods
  inherit NSTextField.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSecureTextField *)
let c = Classes.find "NSSecureTextField"
let _new()= (Objc.objcnew c : [`NSSecureTextField] id)
let alloc() = (Objc.objcalloc c : [`NSSecureTextField] id)
