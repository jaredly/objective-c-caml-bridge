(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSFormatter.methods
end

class t = fun (r :[`NSFormatter] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSFormatter *)
let c = Classes.find "NSFormatter"
let _new()= (Objc.objcnew c : [`NSFormatter] id)
let alloc() = (Objc.objcalloc c : [`NSFormatter] id)
