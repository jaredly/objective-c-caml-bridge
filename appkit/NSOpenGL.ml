open Objc
open NSObject


external init : unit -> unit = "caml_init_NSOpenGL"
let _ = init()
(* Class object for NSOpenGLPixelBuffer *)
let class_NSOpenGLPixelBuffer = object
   val o = Classes.find "NSOpenGLPixelBuffer"
   method _new = (Objc.objcnew o : [`NSOpenGLPixelBuffer] nativeNSObject)
end
(* Encapsulation for native instance of NSOpenGLPixelBuffer *)
class native_NSOpenGLPixelBuffer = fun (o : [`NSOpenGLPixelBuffer] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithTextureTarget  ~textureInternalFormat:(format : int64 ) ~textureMaxMipMapLevel:(maxLevel : int64 ) ~pixelsWide:(pixelsWide : int ) ~pixelsHigh:(pixelsHigh : int ) (target : int64) =
     let sel, args = (
       Objc.arg target "initWithTextureTarget" make_int64
       ++ Objc.arg format "textureInternalFormat" make_int64
       ++ Objc.arg maxLevel "textureMaxMipMapLevel" make_int64
       ++ Objc.arg pixelsWide "pixelsWide" make_int
       ++ Objc.arg pixelsHigh "pixelsHigh" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method pixelsWide =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "pixelsWide:")[]) : int)
   method pixelsHigh =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "pixelsHigh:")[]) : int)
   method textureTarget =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "textureTarget:")[]) : int64)
   method textureInternalFormat =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "textureInternalFormat:")[]) : int64)
   method textureMaxMipMapLevel =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "textureMaxMipMapLevel:")[]) : int64)
end
(* Class object for NSOpenGLPixelFormat *)
let class_NSOpenGLPixelFormat = object
   val o = Classes.find "NSOpenGLPixelFormat"
   method _new = (Objc.objcnew o : [`NSOpenGLPixelFormat] nativeNSObject)
end
(* Encapsulation for native instance of NSOpenGLPixelFormat *)
class native_NSOpenGLPixelFormat = fun (o : [`NSOpenGLPixelFormat] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithAttributes (attribs : [`NSOpenGLPixelFormatAttribute] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithAttributes:")[make_pointer_from_object attribs]) : [`NSObject] Objc.nativeNSObject)
   method initWithData (attribs : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithData:")[make_pointer_from_object attribs]) : [`NSObject] Objc.nativeNSObject)
   method attributes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attributes:")[]) : [`NSData] Objc.nativeNSObject)
   method setAttributes (attribs : [`NSData] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAttributes:")[make_pointer_from_object attribs]) : unit)
(*  UNSUPPORTED
   method getValues  ~forAttribute:(attrib : int ) ~forVirtualScreen:(screen : int ) (vals : (*pointer to long int*) unsupported) =
     let sel, args = (
       Objc.arg vals "getValues" (*pointer to long int*) unsupported
       ++ Objc.arg attrib "forAttribute" make_int
       ++ Objc.arg screen "forVirtualScreen" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   method numberOfVirtualScreens =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfVirtualScreens:")[]) : int)
   method l_CGLPixelFormatObj =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_CGLPixelFormatObj:")[]) : [`void] Objc.nativeNSObject)
end
(* Class object for NSOpenGLContext *)
let class_NSOpenGLContext = object
   val o = Classes.find "NSOpenGLContext"
   method _new = (Objc.objcnew o : [`NSOpenGLContext] nativeNSObject)
   method clearCurrentContext =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "clearCurrentContext:")[]) : [`NSOpenGLContext] Objc.nativeNSObject)
   method currentContext =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentContext:")[]) : [`NSOpenGLContext] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSOpenGLContext *)
class native_NSOpenGLContext = fun (o : [`NSOpenGLContext] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithFormat  ~shareContext:(share : [`NSOpenGLContext] Objc.t ) (format : [`NSOpenGLPixelFormat] Objc.t) =
     let sel, args = (
       Objc.arg format "initWithFormat" make_pointer_from_object
       ++ Objc.arg share "shareContext" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method setView (view : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setView:")[make_pointer_from_object view]) : unit)
   method view =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "view:")[]) : [`NSView] Objc.nativeNSObject)
   method setFullScreen =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFullScreen:")[]) : unit)
   method setOffScreen  ~width:(width : int64 ) ~height:(height : int64 ) ~rowbytes:(rowbytes : int64 ) (baseaddr : [`void] Objc.t) =
     let sel, args = (
       Objc.arg baseaddr "setOffScreen" make_pointer_from_object
       ++ Objc.arg width "width" make_int64
       ++ Objc.arg height "height" make_int64
       ++ Objc.arg rowbytes "rowbytes" make_int64
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method clearDrawable =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "clearDrawable:")[]) : unit)
   method update =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "update:")[]) : unit)
   method flushBuffer =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "flushBuffer:")[]) : unit)
   method makeCurrentContext =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "makeCurrentContext:")[]) : unit)
   method copyAttributesFromContext  ~withMask:(mask : int64 ) (context : [`NSOpenGLContext] Objc.t) =
     let sel, args = (
       Objc.arg context "copyAttributesFromContext" make_pointer_from_object
       ++ Objc.arg mask "withMask" make_int64
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
(*  UNSUPPORTED
   method setValues  ~forParameter:(param : int ) (vals : (*pointer to const long int*) unsupported) =
     let sel, args = (
       Objc.arg vals "setValues" (*pointer to const long int*) unsupported
       ++ Objc.arg param "forParameter" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method getValues  ~forParameter:(param : int ) (vals : (*pointer to long int*) unsupported) =
     let sel, args = (
       Objc.arg vals "getValues" (*pointer to long int*) unsupported
       ++ Objc.arg param "forParameter" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   method setCurrentVirtualScreen (screen : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCurrentVirtualScreen:")[make_int screen]) : unit)
   method currentVirtualScreen =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "currentVirtualScreen:")[]) : int)
   method createTexture  ~fromView:(view : [`NSView] Objc.t ) ~internalFormat:(format : int64 ) (target : int64) =
     let sel, args = (
       Objc.arg target "createTexture" make_int64
       ++ Objc.arg view "fromView" make_pointer_from_object
       ++ Objc.arg format "internalFormat" make_int64
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method l_CGLContextObj =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_CGLContextObj:")[]) : [`void] Objc.nativeNSObject)
   method setPixelBuffer  ~cubeMapFace:(face : int64 ) ~mipMapLevel:(level : int64 ) ~currentVirtualScreen:(screen : int ) (pixelBuffer : [`NSOpenGLPixelBuffer] Objc.t) =
     let sel, args = (
       Objc.arg pixelBuffer "setPixelBuffer" make_pointer_from_object
       ++ Objc.arg face "cubeMapFace" make_int64
       ++ Objc.arg level "mipMapLevel" make_int64
       ++ Objc.arg screen "currentVirtualScreen" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method pixelBuffer =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pixelBuffer:")[]) : [`NSOpenGLPixelBuffer] Objc.nativeNSObject)
   method pixelBufferCubeMapFace =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "pixelBufferCubeMapFace:")[]) : int64)
   method pixelBufferMipMapLevel =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "pixelBufferMipMapLevel:")[]) : int64)
   method setTextureImageToPixelBuffer  ~colorBuffer:(source : int64 ) (pixelBuffer : [`NSOpenGLPixelBuffer] Objc.t) =
     let sel, args = (
       Objc.arg pixelBuffer "setTextureImageToPixelBuffer" make_pointer_from_object
       ++ Objc.arg source "colorBuffer" make_int64
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
