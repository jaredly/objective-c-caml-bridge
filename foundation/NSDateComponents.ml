(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSDateComponents.methods
end

class t = fun (r :[`NSDateComponents] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSDateComponents *)
let c = Classes.find "NSDateComponents"
let _new()= (Objc.objcnew c : [`NSDateComponents] id)
let alloc() = (Objc.objcalloc c : [`NSDateComponents] id)
