(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSOpenGLView] id) -> object
  inherit Im_NSOpenGLView.methods
  method repr = r
end

(* Class object for NSOpenGLView *)
let c = Classes.find "NSOpenGLView"
let _new()= (Objc.objcnew c : [`NSOpenGLView] id)
let alloc() = (Objc.objcalloc c : [`NSOpenGLView] id)
let defaultPixelFormat () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultPixelFormat")[])
       : [`NSOpenGLPixelFormat] Objc.id))
