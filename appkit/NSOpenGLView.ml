(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSView


external init : unit -> unit = "caml_init_NSOpenGLView"
let _ = init()
let make_NSView_of_NSOpenGLView (o : [`NSOpenGLView] nativeNSObject) = (Obj.magic o : [`NSView] nativeNSObject)
(* Class object for NSOpenGLView *)
let class_NSOpenGLView = object
   val repr = Classes.find "NSOpenGLView"
   method _new = (Objc.objcnew repr : [`NSOpenGLView] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSOpenGLView] nativeNSObject)
   method defaultPixelFormat =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultPixelFormat:")[]) : [`NSOpenGLPixelFormat] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSOpenGLView *)
class native_NSOpenGLView = fun (o : [`NSOpenGLView] nativeNSObject) -> object (self)
   inherit native_NSView (make_NSView_of_NSOpenGLView o) as super
(*  UNSUPPORTED
   method initWithFrame  ~pixelFormat:(format : [`NSOpenGLPixelFormat] Objc.t ) (frameRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg frameRect "initWithFrame" (*NSRect*) unsupported
       ++ Objc.arg format "pixelFormat" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method setOpenGLContext (context : [`NSOpenGLContext] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setOpenGLContext:")[make_pointer_from_object context]) : unit)
   method openGLContext =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "openGLContext:")[]) : [`NSOpenGLContext] Objc.nativeNSObject)
   method clearGLContext =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "clearGLContext:")[]) : unit)
   method update =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "update:")[]) : unit)
   method reshape =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "reshape:")[]) : unit)
   method setPixelFormat (pixelFormat : [`NSOpenGLPixelFormat] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPixelFormat:")[make_pointer_from_object pixelFormat]) : unit)
   method pixelFormat =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "pixelFormat:")[]) : [`NSOpenGLPixelFormat] Objc.nativeNSObject)
   method prepareOpenGL =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "prepareOpenGL:")[]) : unit)
end
