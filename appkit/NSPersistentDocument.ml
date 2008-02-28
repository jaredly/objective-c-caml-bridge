(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPersistentDocument] id) -> object
  inherit Im_NSPersistentDocument.methods
  method repr = r
end

(* Class object for NSPersistentDocument *)
let c = Classes.find "NSPersistentDocument"
let _new()= (Objc.objcnew c : [`NSPersistentDocument] id)
let alloc() = (Objc.objcalloc c : [`NSPersistentDocument] id)
