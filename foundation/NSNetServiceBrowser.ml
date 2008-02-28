(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSNetServiceBrowser] id) -> object
  inherit Im_NSNetServiceBrowser.methods
  method repr = r
end

(* Class object for NSNetServiceBrowser *)
let c = Classes.find "NSNetServiceBrowser"
let _new()= (Objc.objcnew c : [`NSNetServiceBrowser] id)
let alloc() = (Objc.objcalloc c : [`NSNetServiceBrowser] id)
