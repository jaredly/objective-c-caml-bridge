(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSLock] id) -> object
  inherit Im_NSLock.methods
  method repr = r
end

(* Class object for NSLock *)
let c = Classes.find "NSLock"
let _new()= (Objc.objcnew c : [`NSLock] id)
let alloc() = (Objc.objcalloc c : [`NSLock] id)
