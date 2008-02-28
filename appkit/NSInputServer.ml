(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSInputServer] id) -> object
  inherit Im_NSInputServer.methods
  method repr = r
end

(* Class object for NSInputServer *)
let c = Classes.find "NSInputServer"
let _new()= (Objc.objcnew c : [`NSInputServer] id)
let alloc() = (Objc.objcalloc c : [`NSInputServer] id)
