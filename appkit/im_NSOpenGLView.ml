(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSOpenGLView *)
class virtual methods = object (self)
  method virtual repr : [`NSOpenGLView] Objc.id
(*  UNSUPPORTED
  method initWithFrame  ~pixelFormat:(format : [`NSOpenGLPixelFormat] Objc.t ) (frameRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg frameRect "initWithFrame" (*NSRect*) unsupported
      ++ Objc.arg format "pixelFormat" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method setOpenGLContext (context : [`NSOpenGLContext] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOpenGLContext:")
      [make_pointer_from_object context]) : unit)
  method openGLContext =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "openGLContext")[])
       : [`NSOpenGLContext] Objc.id))
  method clearGLContext =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "clearGLContext")[])
       : unit)
  method update =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "update")[])
       : unit)
  method reshape =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "reshape")[])
       : unit)
  method setPixelFormat (pixelFormat : [`NSOpenGLPixelFormat] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPixelFormat:")
      [make_pointer_from_object pixelFormat]) : unit)
  method pixelFormat =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pixelFormat")[])
       : [`NSOpenGLPixelFormat] Objc.id))
  method prepareOpenGL =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "prepareOpenGL")[])
       : unit)
end
