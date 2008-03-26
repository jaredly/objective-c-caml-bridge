(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSBezierPath.methods
end

class t = fun (r :[`NSBezierPath] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSBezierPath *)
let c = Classes.find "NSBezierPath"
let _new()= (Objc.objcnew c : [`NSBezierPath] id)
let alloc() = (Objc.objcalloc c : [`NSBezierPath] id)
let bezierPath () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "bezierPath")[])
       : [`NSBezierPath] Objc.id))
let bezierPathWithRect (rect : NSRect.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "bezierPathWithRect:")
      [make_rect rect]) : [`NSBezierPath] Objc.id))
let bezierPathWithOvalInRect (rect : NSRect.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "bezierPathWithOvalInRect:")
      [make_rect rect]) : [`NSBezierPath] Objc.id))
let fillRect (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "fillRect:")
      [make_rect rect]) : unit)
let strokeRect (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "strokeRect:")
      [make_rect rect]) : unit)
let clipRect (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "clipRect:")
      [make_rect rect]) : unit)
let strokeLineFromPoint_toPoint  (point1 : NSPoint.t) (point2 : NSPoint.t) =
    let sel, args = (
      Objc.arg point1 "strokeLineFromPoint" make_point
      ++ Objc.arg point2 "toPoint" make_point
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let drawPackedGlyphs_atPoint  (packedGlyphs : string) (point : NSPoint.t) =
    let sel, args = (
      Objc.arg packedGlyphs "drawPackedGlyphs" make_string
      ++ Objc.arg point "atPoint" make_point
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let setDefaultMiterLimit (limit : float) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setDefaultMiterLimit:")
      [make_float limit]) : unit)
let defaultMiterLimit () =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "defaultMiterLimit")[])
       : float)
let setDefaultFlatness (flatness : float) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setDefaultFlatness:")
      [make_float flatness]) : unit)
let defaultFlatness () =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "defaultFlatness")[])
       : float)
let setDefaultWindingRule (windingRule : int) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setDefaultWindingRule:")
      [make_int windingRule]) : unit)
let defaultWindingRule () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "defaultWindingRule")[])
       : int)
let setDefaultLineCapStyle (lineCapStyle : int) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setDefaultLineCapStyle:")
      [make_int lineCapStyle]) : unit)
let defaultLineCapStyle () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "defaultLineCapStyle")[])
       : int)
let setDefaultLineJoinStyle (lineJoinStyle : int) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setDefaultLineJoinStyle:")
      [make_int lineJoinStyle]) : unit)
let defaultLineJoinStyle () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "defaultLineJoinStyle")[])
       : int)
let setDefaultLineWidth (lineWidth : float) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setDefaultLineWidth:")
      [make_float lineWidth]) : unit)
let defaultLineWidth () =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "defaultLineWidth")[])
       : float)
