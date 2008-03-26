(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSStatusBar.methods
end

class t = fun (r :[`NSStatusBar] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSStatusBar *)
let c = Classes.find "NSStatusBar"
let _new()= (Objc.objcnew c : [`NSStatusBar] id)
let alloc() = (Objc.objcalloc c : [`NSStatusBar] id)
let systemStatusBar () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "systemStatusBar")[])
       : [`NSStatusBar] Objc.id))
