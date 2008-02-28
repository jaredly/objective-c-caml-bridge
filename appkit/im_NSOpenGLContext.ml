(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSOpenGLContext *)
class virtual methods = object (self)
  method virtual repr : [`NSOpenGLContext] Objc.id
  method initWithFormat  ~shareContext:(share : [`NSOpenGLContext] Objc.t ) (format : [`NSOpenGLPixelFormat] Objc.t) =
    let sel, args = (
      Objc.arg format "initWithFormat" make_pointer_from_object
      ++ Objc.arg share "shareContext" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method setView (view : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setView:")
      [make_pointer_from_object view]) : unit)
  method view =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "view")[])
       : [`NSView] Objc.id))
  method setFullScreen =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFullScreen")[])
       : unit)
  method setOffScreen  ~width:(width : int64 ) ~height:(height : int64 ) ~rowbytes:(rowbytes : int64 ) (baseaddr : [`void] Objc.t) =
    let sel, args = (
      Objc.arg baseaddr "setOffScreen" make_pointer_from_object
      ++ Objc.arg width "width" make_int64
      ++ Objc.arg height "height" make_int64
      ++ Objc.arg rowbytes "rowbytes" make_int64
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method clearDrawable =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "clearDrawable")[])
       : unit)
  method update =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "update")[])
       : unit)
  method flushBuffer =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "flushBuffer")[])
       : unit)
  method makeCurrentContext =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "makeCurrentContext")[])
       : unit)
  method copyAttributesFromContext  ~withMask:(mask : int64 ) (context : [`NSOpenGLContext] Objc.t) =
    let sel, args = (
      Objc.arg context "copyAttributesFromContext" make_pointer_from_object
      ++ Objc.arg mask "withMask" make_int64
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method setValues  ~forParameter:(param : int ) (vals : (*pointer to const long int*) unsupported) =
    let sel, args = (
      Objc.arg vals "setValues" (*pointer to const long int*) unsupported
      ++ Objc.arg param "forParameter" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method getValues  ~forParameter:(param : int ) (vals : (*pointer to long int*) unsupported) =
    let sel, args = (
      Objc.arg vals "getValues" (*pointer to long int*) unsupported
      ++ Objc.arg param "forParameter" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method setCurrentVirtualScreen (screen : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCurrentVirtualScreen:")
      [make_int screen]) : unit)
  method currentVirtualScreen =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "currentVirtualScreen")[])
       : int)
  method createTexture  ~fromView:(view : [`NSView] Objc.t ) ~internalFormat:(format : int64 ) (target : int64) =
    let sel, args = (
      Objc.arg target "createTexture" make_int64
      ++ Objc.arg view "fromView" make_pointer_from_object
      ++ Objc.arg format "internalFormat" make_int64
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method l_CGLContextObj =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_CGLContextObj")[])
       : [`void] Objc.id))
  method setPixelBuffer  ~cubeMapFace:(face : int64 ) ~mipMapLevel:(level : int64 ) ~currentVirtualScreen:(screen : int ) (pixelBuffer : [`NSOpenGLPixelBuffer] Objc.t) =
    let sel, args = (
      Objc.arg pixelBuffer "setPixelBuffer" make_pointer_from_object
      ++ Objc.arg face "cubeMapFace" make_int64
      ++ Objc.arg level "mipMapLevel" make_int64
      ++ Objc.arg screen "currentVirtualScreen" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method pixelBuffer =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pixelBuffer")[])
       : [`NSOpenGLPixelBuffer] Objc.id))
  method pixelBufferCubeMapFace =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "pixelBufferCubeMapFace")[])
       : int64)
  method pixelBufferMipMapLevel =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "pixelBufferMipMapLevel")[])
       : int64)
  method setTextureImageToPixelBuffer  ~colorBuffer:(source : int64 ) (pixelBuffer : [`NSOpenGLPixelBuffer] Objc.t) =
    let sel, args = (
      Objc.arg pixelBuffer "setTextureImageToPixelBuffer" make_pointer_from_object
      ++ Objc.arg source "colorBuffer" make_int64
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
