(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSURLCredential] id) -> object
  inherit Im_NSURLCredential.methods
  method repr = r
end

(* Class object for NSURLCredential *)
let c = Classes.find "NSURLCredential"
let _new()= (Objc.objcnew c : [`NSURLCredential] id)
let alloc() = (Objc.objcalloc c : [`NSURLCredential] id)
let credentialWithUser  ~password:(password : [`NSString] Objc.t ) ~persistence:(persistence : int ) (user : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg user "credentialWithUser" make_pointer_from_object
      ++ Objc.arg password "password" make_pointer_from_object
      ++ Objc.arg persistence "persistence" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSURLCredential] Objc.id))
