(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSURLCredentialStorage.methods
end

class t = fun (r :[`NSURLCredentialStorage] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSURLCredentialStorage *)
let c = Classes.find "NSURLCredentialStorage"
let _new()= (Objc.objcnew c : [`NSURLCredentialStorage] id)
let alloc() = (Objc.objcalloc c : [`NSURLCredentialStorage] id)
let sharedCredentialStorage () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedCredentialStorage")[])
       : [`NSURLCredentialStorage] Objc.id))
