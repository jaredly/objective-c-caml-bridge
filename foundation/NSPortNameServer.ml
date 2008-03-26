(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPortNameServer.methods
end

class t = fun (r :[`NSPortNameServer] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPortNameServer *)
let c = Classes.find "NSPortNameServer"
let _new()= (Objc.objcnew c : [`NSPortNameServer] id)
let alloc() = (Objc.objcalloc c : [`NSPortNameServer] id)
let systemDefaultPortNameServer () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "systemDefaultPortNameServer")[])
       : [`NSPortNameServer] Objc.id))
