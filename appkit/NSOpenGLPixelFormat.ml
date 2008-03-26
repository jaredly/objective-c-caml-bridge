(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSOpenGLPixelFormat.methods
end

class t = fun (r :[`NSOpenGLPixelFormat] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSOpenGLPixelFormat *)
let c = Classes.find "NSOpenGLPixelFormat"
let _new()= (Objc.objcnew c : [`NSOpenGLPixelFormat] id)
let alloc() = (Objc.objcalloc c : [`NSOpenGLPixelFormat] id)
