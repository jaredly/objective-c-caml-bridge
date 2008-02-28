(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSCachedURLResponse] id) -> object
  inherit Im_NSCachedURLResponse.methods
  method repr = r
end

(* Class object for NSCachedURLResponse *)
let c = Classes.find "NSCachedURLResponse"
let _new()= (Objc.objcnew c : [`NSCachedURLResponse] id)
let alloc() = (Objc.objcalloc c : [`NSCachedURLResponse] id)
