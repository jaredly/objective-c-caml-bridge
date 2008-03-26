(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSExtendedMutableAttributedString.methods_NSMutableAttributedString
  inherit Im_NSMutableAttributedString.methods
end

class t = fun (r :[`NSMutableAttributedString] id) -> object
  inherit methods
  inherit NSAttributedString.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMutableAttributedString *)
let c = Classes.find "NSMutableAttributedString"
let _new()= (Objc.objcnew c : [`NSMutableAttributedString] id)
let alloc() = (Objc.objcalloc c : [`NSMutableAttributedString] id)
(* class methods for category NSExtendedMutableAttributedString of NSMutableAttributedString *)
