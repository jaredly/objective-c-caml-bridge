(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSImageRep *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method draw =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "draw")[])
       : bool)
  method drawAtPoint (point : NSPoint.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "drawAtPoint:")
      [make_point point]) : bool)
  method drawInRect (rect : NSRect.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "drawInRect:")
      [make_rect rect]) : bool)
  method setSize (aSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSize:")
      [make_size aSize]) : unit)
  method size =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "size")[])
       : NSSize.t)
  method setAlpha (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlpha:")
      [make_bool flag]) : unit)
  method hasAlpha =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasAlpha")[])
       : bool)
  method setOpaque (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOpaque:")
      [make_bool flag]) : unit)
  method isOpaque =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isOpaque")[])
       : bool)
  method setColorSpaceName (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setColorSpaceName:")
      [make_pointer_from_object string]) : unit)
  method colorSpaceName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "colorSpaceName")[])
       : [`NSString] Objc.id))
  method setBitsPerSample (anInt : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBitsPerSample:")
      [make_int anInt]) : unit)
  method bitsPerSample =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "bitsPerSample")[])
       : int)
  method setPixelsWide (anInt : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPixelsWide:")
      [make_int anInt]) : unit)
  method pixelsWide =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "pixelsWide")[])
       : int)
  method setPixelsHigh (anInt : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPixelsHigh:")
      [make_int anInt]) : unit)
  method pixelsHigh =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "pixelsHigh")[])
       : int)
end
