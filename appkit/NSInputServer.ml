(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSInputServer.methods
end

class t = fun (r :[`NSInputServer] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSInputServer *)
let c = Classes.find "NSInputServer"
let _new()= (Objc.objcnew c : [`NSInputServer] id)
let alloc() = (Objc.objcalloc c : [`NSInputServer] id)
