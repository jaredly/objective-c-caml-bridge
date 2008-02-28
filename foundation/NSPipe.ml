(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPipe] id) -> object
  inherit Im_NSPipe.methods
  method repr = r
end

(* Class object for NSPipe *)
let c = Classes.find "NSPipe"
let _new()= (Objc.objcnew c : [`NSPipe] id)
let alloc() = (Objc.objcalloc c : [`NSPipe] id)
let pipe () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "pipe")[])
       : [`NSPipe] Objc.id))
