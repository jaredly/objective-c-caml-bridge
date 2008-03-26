(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSpellServer.methods
end

class t = fun (r :[`NSSpellServer] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSpellServer *)
let c = Classes.find "NSSpellServer"
let _new()= (Objc.objcnew c : [`NSSpellServer] id)
let alloc() = (Objc.objcalloc c : [`NSSpellServer] id)
