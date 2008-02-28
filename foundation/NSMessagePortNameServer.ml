(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMessagePortNameServer] id) -> object
  inherit Im_NSMessagePortNameServer.methods
  method repr = r
end

(* Class object for NSMessagePortNameServer *)
let c = Classes.find "NSMessagePortNameServer"
let _new()= (Objc.objcnew c : [`NSMessagePortNameServer] id)
let alloc() = (Objc.objcalloc c : [`NSMessagePortNameServer] id)
let sharedInstance () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedInstance")[])
       : [`NSMessagePortNameServer] Objc.id))
