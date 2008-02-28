(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSpellServer] id) -> object
  inherit Im_NSSpellServer.methods
  method repr = r
end

(* Class object for NSSpellServer *)
let c = Classes.find "NSSpellServer"
let _new()= (Objc.objcnew c : [`NSSpellServer] id)
let alloc() = (Objc.objcalloc c : [`NSSpellServer] id)
