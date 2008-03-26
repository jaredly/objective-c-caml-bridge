(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPersistentDocument.methods
end

class t = fun (r :[`NSPersistentDocument] id) -> object
  inherit methods
  inherit NSDocument.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPersistentDocument *)
let c = Classes.find "NSPersistentDocument"
let _new()= (Objc.objcnew c : [`NSPersistentDocument] id)
let alloc() = (Objc.objcalloc c : [`NSPersistentDocument] id)
