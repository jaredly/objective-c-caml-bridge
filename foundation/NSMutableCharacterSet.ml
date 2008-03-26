(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMutableCharacterSet.methods
end

class t = fun (r :[`NSMutableCharacterSet] id) -> object
  inherit methods
  inherit NSCharacterSet.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMutableCharacterSet *)
let c = Classes.find "NSMutableCharacterSet"
let _new()= (Objc.objcnew c : [`NSMutableCharacterSet] id)
let alloc() = (Objc.objcalloc c : [`NSMutableCharacterSet] id)
