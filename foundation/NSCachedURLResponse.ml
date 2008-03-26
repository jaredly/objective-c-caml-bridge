(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSCachedURLResponse.methods
end

class t = fun (r :[`NSCachedURLResponse] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCachedURLResponse *)
let c = Classes.find "NSCachedURLResponse"
let _new()= (Objc.objcnew c : [`NSCachedURLResponse] id)
let alloc() = (Objc.objcalloc c : [`NSCachedURLResponse] id)
