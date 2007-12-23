open Objc
open NSView


external init : unit -> unit = "caml_init_NSOpenGLView"
let _ = init()
(* Class object for NSOpenGLView *)
let class_NSOpenGLView = object
   val o = Classes.find "NSOpenGLView"
   method _new = (Objc.objcnew o : [`NSOpenGLView] nativeNSObject)
   method defaultPixelFormat =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultPixelFormat:")[]) : [`NSOpenGLPixelFormat] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSOpenGLView *)
class native_NSOpenGLView = fun (o : [`NSOpenGLView] nativeNSObject) -> object (self)
   val o = o
   method o = o
(*  UNSUPPORTED
   method initWithFrame  ~pixelFormat:(format : [`NSOpenGLPixelFormat] Objc.t ) (frameRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg frameRect "initWithFrame" (*NSRect*) unsupported
       ++ Objc.arg format "pixelFormat" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method setOpenGLContext (context : [`NSOpenGLContext] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setOpenGLContext:")[make_pointer_from_object context]) : unit)
   method openGLContext =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "openGLContext:")[]) : [`NSOpenGLContext] Objc.nativeNSObject)
   method clearGLContext =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "clearGLContext:")[]) : unit)
   method update =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "update:")[]) : unit)
   method reshape =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "reshape:")[]) : unit)
   method setPixelFormat (pixelFormat : [`NSOpenGLPixelFormat] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPixelFormat:")[make_pointer_from_object pixelFormat]) : unit)
   method pixelFormat =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pixelFormat:")[]) : [`NSOpenGLPixelFormat] Objc.nativeNSObject)
   method prepareOpenGL =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "prepareOpenGL:")[]) : unit)
end
