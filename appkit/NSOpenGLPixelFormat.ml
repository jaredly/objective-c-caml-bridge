(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSOpenGLPixelFormat] id) -> object
  inherit Im_NSOpenGLPixelFormat.methods
  method repr = r
end

(* Class object for NSOpenGLPixelFormat *)
let c = Classes.find "NSOpenGLPixelFormat"
let _new()= (Objc.objcnew c : [`NSOpenGLPixelFormat] id)
let alloc() = (Objc.objcalloc c : [`NSOpenGLPixelFormat] id)
