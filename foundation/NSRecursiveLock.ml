(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSRecursiveLock.methods
end

class t = fun (r :[`NSRecursiveLock] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSRecursiveLock *)
let c = Classes.find "NSRecursiveLock"
let _new()= (Objc.objcnew c : [`NSRecursiveLock] id)
let alloc() = (Objc.objcalloc c : [`NSRecursiveLock] id)
