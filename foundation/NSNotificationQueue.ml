(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSNotificationQueue] id) -> object
  inherit Im_NSNotificationQueue.methods
  method repr = r
end

(* Class object for NSNotificationQueue *)
let c = Classes.find "NSNotificationQueue"
let _new()= (Objc.objcnew c : [`NSNotificationQueue] id)
let alloc() = (Objc.objcalloc c : [`NSNotificationQueue] id)
let defaultQueue () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultQueue")[])
       : [`NSNotificationQueue] Objc.id))
