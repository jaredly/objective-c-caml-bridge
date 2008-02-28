(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSecureTextField] id) -> object
  inherit Im_NSSecureTextField.methods
  method repr = r
end

(* Class object for NSSecureTextField *)
let c = Classes.find "NSSecureTextField"
let _new()= (Objc.objcnew c : [`NSSecureTextField] id)
let alloc() = (Objc.objcalloc c : [`NSSecureTextField] id)
