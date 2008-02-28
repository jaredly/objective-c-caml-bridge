(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSConditionLock] id) -> object
  inherit Im_NSConditionLock.methods
  method repr = r
end

(* Class object for NSConditionLock *)
let c = Classes.find "NSConditionLock"
let _new()= (Objc.objcnew c : [`NSConditionLock] id)
let alloc() = (Objc.objcalloc c : [`NSConditionLock] id)
