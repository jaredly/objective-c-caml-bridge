(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSStatusBar] id) -> object
  inherit Im_NSStatusBar.methods
  method repr = r
end

(* Class object for NSStatusBar *)
let c = Classes.find "NSStatusBar"
let _new()= (Objc.objcnew c : [`NSStatusBar] id)
let alloc() = (Objc.objcalloc c : [`NSStatusBar] id)
let systemStatusBar () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "systemStatusBar")[])
       : [`NSStatusBar] Objc.id))
