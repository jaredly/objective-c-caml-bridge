(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPipe.methods
end

class t = fun (r :[`NSPipe] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPipe *)
let c = Classes.find "NSPipe"
let _new()= (Objc.objcnew c : [`NSPipe] id)
let alloc() = (Objc.objcalloc c : [`NSPipe] id)
let pipe () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "pipe")[])
       : [`NSPipe] Objc.id))
