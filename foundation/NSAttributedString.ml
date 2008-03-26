(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSExtendedAttributedString.methods_NSAttributedString
  inherit Im_NSAttributedString.methods
end

class t = fun (r :[`NSAttributedString] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSAttributedString *)
let c = Classes.find "NSAttributedString"
let _new()= (Objc.objcnew c : [`NSAttributedString] id)
let alloc() = (Objc.objcalloc c : [`NSAttributedString] id)
(* class methods for category NSExtendedAttributedString of NSAttributedString *)
