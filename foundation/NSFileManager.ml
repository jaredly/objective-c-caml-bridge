(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSFileManager.methods
end

class t = fun (r :[`NSFileManager] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSFileManager *)
let c = Classes.find "NSFileManager"
let _new()= (Objc.objcnew c : [`NSFileManager] id)
let alloc() = (Objc.objcalloc c : [`NSFileManager] id)
let defaultManager () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultManager")[])
       : [`NSFileManager] Objc.id))
