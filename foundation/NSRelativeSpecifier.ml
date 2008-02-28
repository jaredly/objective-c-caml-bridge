(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSRelativeSpecifier] id) -> object
  inherit Im_NSRelativeSpecifier.methods
  method repr = r
end

(* Class object for NSRelativeSpecifier *)
let c = Classes.find "NSRelativeSpecifier"
let _new()= (Objc.objcnew c : [`NSRelativeSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSRelativeSpecifier] id)
