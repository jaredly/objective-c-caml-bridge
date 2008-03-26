(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSGeometryCoding of NSCoder *)
class virtual methods_NSCoder = object (self)
  method virtual repr : [`NSObject] Objc.id
  method encodePoint (point : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodePoint:")
      [make_point point]) : unit)
  method decodePoint =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "decodePoint")[])
       : NSPoint.t)
  method encodeSize (size : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodeSize:")
      [make_size size]) : unit)
  method decodeSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "decodeSize")[])
       : NSSize.t)
  method encodeRect (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodeRect:")
      [make_rect rect]) : unit)
  method decodeRect =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "decodeRect")[])
       : NSRect.t)
end
