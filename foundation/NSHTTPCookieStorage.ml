(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSHTTPCookieStorage.methods
end

class t = fun (r :[`NSHTTPCookieStorage] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSHTTPCookieStorage *)
let c = Classes.find "NSHTTPCookieStorage"
let _new()= (Objc.objcnew c : [`NSHTTPCookieStorage] id)
let alloc() = (Objc.objcalloc c : [`NSHTTPCookieStorage] id)
let sharedHTTPCookieStorage () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedHTTPCookieStorage")[])
       : [`NSHTTPCookieStorage] Objc.id))
