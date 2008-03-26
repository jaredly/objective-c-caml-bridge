(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSGeometryKeyedCoding of NSCoder *)
class virtual methods_NSCoder = object (self)
  method virtual repr : [`NSObject] Objc.id
  method encodePoint_forKey  (point : NSPoint.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg point "encodePoint" make_point
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeSize_forKey  (size : NSSize.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg size "encodeSize" make_size
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeRect_forKey  (rect : NSRect.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg rect "encodeRect" make_rect
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method decodePointForKey (key : [`NSString] Objc.t) =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "decodePointForKey:")
      [make_pointer_from_object key]) : NSPoint.t)
  method decodeSizeForKey (key : [`NSString] Objc.t) =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "decodeSizeForKey:")
      [make_pointer_from_object key]) : NSSize.t)
  method decodeRectForKey (key : [`NSString] Objc.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "decodeRectForKey:")
      [make_pointer_from_object key]) : NSRect.t)
end
