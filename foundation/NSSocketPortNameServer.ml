(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSocketPortNameServer] id) -> object
  inherit Im_NSSocketPortNameServer.methods
  method repr = r
end

(* Class object for NSSocketPortNameServer *)
let c = Classes.find "NSSocketPortNameServer"
let _new()= (Objc.objcnew c : [`NSSocketPortNameServer] id)
let alloc() = (Objc.objcalloc c : [`NSSocketPortNameServer] id)
let sharedInstance () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedInstance")[])
       : [`NSSocketPortNameServer] Objc.id))
