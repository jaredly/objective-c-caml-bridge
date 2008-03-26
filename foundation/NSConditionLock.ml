(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSConditionLock.methods
end

class t = fun (r :[`NSConditionLock] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSConditionLock *)
let c = Classes.find "NSConditionLock"
let _new()= (Objc.objcnew c : [`NSConditionLock] id)
let alloc() = (Objc.objcalloc c : [`NSConditionLock] id)
