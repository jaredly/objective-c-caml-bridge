(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPortNameServer] id) -> object
  inherit Im_NSPortNameServer.methods
  method repr = r
end

(* Class object for NSPortNameServer *)
let c = Classes.find "NSPortNameServer"
let _new()= (Objc.objcnew c : [`NSPortNameServer] id)
let alloc() = (Objc.objcalloc c : [`NSPortNameServer] id)
let systemDefaultPortNameServer () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "systemDefaultPortNameServer")[])
       : [`NSPortNameServer] Objc.id))
