(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSLock.methods
end

class t = fun (r :[`NSLock] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSLock *)
let c = Classes.find "NSLock"
let _new()= (Objc.objcnew c : [`NSLock] id)
let alloc() = (Objc.objcalloc c : [`NSLock] id)
