(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSOpenGLPixelBuffer *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithTextureTarget_textureInternalFormat_textureMaxMipMapLevel_pixelsWide_pixelsHigh  (target : int64) (format : int64) (maxLevel : int64) (pixelsWide : int) (pixelsHigh : int) =
    let sel, args = (
      Objc.arg target "initWithTextureTarget" make_int64
      ++ Objc.arg format "textureInternalFormat" make_int64
      ++ Objc.arg maxLevel "textureMaxMipMapLevel" make_int64
      ++ Objc.arg pixelsWide "pixelsWide" make_int
      ++ Objc.arg pixelsHigh "pixelsHigh" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method pixelsWide =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "pixelsWide")[])
       : int)
  method pixelsHigh =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "pixelsHigh")[])
       : int)
  method textureTarget =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "textureTarget")[])
       : int64)
  method textureInternalFormat =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "textureInternalFormat")[])
       : int64)
  method textureMaxMipMapLevel =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "textureMaxMipMapLevel")[])
       : int64)
end
