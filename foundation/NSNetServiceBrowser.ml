(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSNetServiceBrowser.methods
end

class t = fun (r :[`NSNetServiceBrowser] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSNetServiceBrowser *)
let c = Classes.find "NSNetServiceBrowser"
let _new()= (Objc.objcnew c : [`NSNetServiceBrowser] id)
let alloc() = (Objc.objcalloc c : [`NSNetServiceBrowser] id)
