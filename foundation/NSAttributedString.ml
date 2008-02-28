(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSAttributedString] id) -> object
  inherit Cati_NSExtendedAttributedString.methods_NSAttributedString
  inherit Im_NSAttributedString.methods
  method repr = r
end

(* Class object for NSAttributedString *)
let c = Classes.find "NSAttributedString"
let _new()= (Objc.objcnew c : [`NSAttributedString] id)
let alloc() = (Objc.objcalloc c : [`NSAttributedString] id)
(* class methods for category NSExtendedAttributedString of NSAttributedString *)
