(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSImageRep *)
class virtual methods = object (self)
  method virtual repr : [`NSImageRep] Objc.id
  method draw =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "draw")[])
       : bool)
(*  UNSUPPORTED
  method drawAtPoint (point : (*NSPoint*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "drawAtPoint:")
      [(*NSPoint*) unsupported point]) : bool)

*)
(*  UNSUPPORTED
  method drawInRect (rect : (*NSRect*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "drawInRect:")
      [(*NSRect*) unsupported rect]) : bool)

*)
(*  UNSUPPORTED
  method setSize (aSize : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSize:")
      [(*NSSize*) unsupported aSize]) : unit)

*)
(*  UNSUPPORTED
  method size =
    ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find "size")[])
       : (*NSSize*) unsupported)

*)
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
