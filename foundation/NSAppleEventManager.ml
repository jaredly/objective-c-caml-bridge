(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSAppleEventManager] id) -> object
  inherit Im_NSAppleEventManager.methods
  method repr = r
end

(* Class object for NSAppleEventManager *)
let c = Classes.find "NSAppleEventManager"
let _new()= (Objc.objcnew c : [`NSAppleEventManager] id)
let alloc() = (Objc.objcalloc c : [`NSAppleEventManager] id)
let sharedAppleEventManager () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedAppleEventManager")[])
       : [`NSAppleEventManager] Objc.id))
