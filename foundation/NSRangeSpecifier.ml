(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSRangeSpecifier.methods
end

class t = fun (r :[`NSRangeSpecifier] id) -> object
  inherit methods
  inherit NSScriptObjectSpecifier.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSRangeSpecifier *)
let c = Classes.find "NSRangeSpecifier"
let _new()= (Objc.objcnew c : [`NSRangeSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSRangeSpecifier] id)
