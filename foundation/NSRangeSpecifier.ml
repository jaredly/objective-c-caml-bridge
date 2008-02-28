(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSRangeSpecifier] id) -> object
  inherit Im_NSRangeSpecifier.methods
  method repr = r
end

(* Class object for NSRangeSpecifier *)
let c = Classes.find "NSRangeSpecifier"
let _new()= (Objc.objcnew c : [`NSRangeSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSRangeSpecifier] id)
