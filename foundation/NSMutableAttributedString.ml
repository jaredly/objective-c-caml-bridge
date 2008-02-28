(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMutableAttributedString] id) -> object
  inherit Im_NSMutableAttributedString.methods
  method repr = r
end

(* Class object for NSMutableAttributedString *)
let c = Classes.find "NSMutableAttributedString"
let _new()= (Objc.objcnew c : [`NSMutableAttributedString] id)
let alloc() = (Objc.objcalloc c : [`NSMutableAttributedString] id)
