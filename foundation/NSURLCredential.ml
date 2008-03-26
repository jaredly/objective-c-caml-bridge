(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSURLCredential.methods
end

class t = fun (r :[`NSURLCredential] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSURLCredential *)
let c = Classes.find "NSURLCredential"
let _new()= (Objc.objcnew c : [`NSURLCredential] id)
let alloc() = (Objc.objcalloc c : [`NSURLCredential] id)
let credentialWithUser_password_persistence  (user : [`NSString] Objc.t) (password : [`NSString] Objc.t) (persistence : int) =
    let sel, args = (
      Objc.arg user "credentialWithUser" make_pointer_from_object
      ++ Objc.arg password "password" make_pointer_from_object
      ++ Objc.arg persistence "persistence" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSURLCredential] Objc.id))
