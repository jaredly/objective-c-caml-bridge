(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSNotificationCenter] id) -> object
  inherit Im_NSNotificationCenter.methods
  method repr = r
end

(* Class object for NSNotificationCenter *)
let c = Classes.find "NSNotificationCenter"
let _new()= (Objc.objcnew c : [`NSNotificationCenter] id)
let alloc() = (Objc.objcalloc c : [`NSNotificationCenter] id)
let defaultCenter () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultCenter")[])
       : [`NSNotificationCenter] Objc.id))
