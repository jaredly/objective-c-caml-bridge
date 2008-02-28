(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSOpenGLContext] id) -> object
  inherit Im_NSOpenGLContext.methods
  method repr = r
end

(* Class object for NSOpenGLContext *)
let c = Classes.find "NSOpenGLContext"
let _new()= (Objc.objcnew c : [`NSOpenGLContext] id)
let alloc() = (Objc.objcalloc c : [`NSOpenGLContext] id)
let clearCurrentContext () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "clearCurrentContext")[])
       : unit)
let currentContext () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentContext")[])
       : [`NSOpenGLContext] Objc.id))
