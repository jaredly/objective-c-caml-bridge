(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMachBootstrapServer.methods
end

class t = fun (r :[`NSMachBootstrapServer] id) -> object
  inherit methods
  inherit NSPortNameServer.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMachBootstrapServer *)
let c = Classes.find "NSMachBootstrapServer"
let _new()= (Objc.objcnew c : [`NSMachBootstrapServer] id)
let alloc() = (Objc.objcalloc c : [`NSMachBootstrapServer] id)
let sharedInstance () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedInstance")[])
       : [`NSMachBootstrapServer] Objc.id))
