(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSOpenGLPixelBuffer] id) -> object
  inherit Im_NSOpenGLPixelBuffer.methods
  method repr = r
end

(* Class object for NSOpenGLPixelBuffer *)
let c = Classes.find "NSOpenGLPixelBuffer"
let _new()= (Objc.objcnew c : [`NSOpenGLPixelBuffer] id)
let alloc() = (Objc.objcalloc c : [`NSOpenGLPixelBuffer] id)
