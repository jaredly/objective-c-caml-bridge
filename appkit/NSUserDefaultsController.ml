(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSUserDefaultsController] id) -> object
  inherit Im_NSUserDefaultsController.methods
  method repr = r
end

(* Class object for NSUserDefaultsController *)
let c = Classes.find "NSUserDefaultsController"
let _new()= (Objc.objcnew c : [`NSUserDefaultsController] id)
let alloc() = (Objc.objcalloc c : [`NSUserDefaultsController] id)
let sharedUserDefaultsController () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedUserDefaultsController")[])
       : [`NSUserDefaultsController] Objc.id))
