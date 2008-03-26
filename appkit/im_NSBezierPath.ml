(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSBezierPath *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method moveToPoint (point : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveToPoint:")
      [make_point point]) : unit)
  method lineToPoint (point : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "lineToPoint:")
      [make_point point]) : unit)
  method curveToPoint_controlPoint1_controlPoint2  (endPoint : NSPoint.t) (controlPoint1 : NSPoint.t) (controlPoint2 : NSPoint.t) =
    let sel, args = (
      Objc.arg endPoint "curveToPoint" make_point
      ++ Objc.arg controlPoint1 "controlPoint1" make_point
      ++ Objc.arg controlPoint2 "controlPoint2" make_point
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method closePath =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "closePath")[])
       : unit)
  method removeAllPoints =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeAllPoints")[])
       : unit)
  method relativeMoveToPoint (point : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "relativeMoveToPoint:")
      [make_point point]) : unit)
  method relativeLineToPoint (point : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "relativeLineToPoint:")
      [make_point point]) : unit)
  method relativeCurveToPoint_controlPoint1_controlPoint2  (endPoint : NSPoint.t) (controlPoint1 : NSPoint.t) (controlPoint2 : NSPoint.t) =
    let sel, args = (
      Objc.arg endPoint "relativeCurveToPoint" make_point
      ++ Objc.arg controlPoint1 "controlPoint1" make_point
      ++ Objc.arg controlPoint2 "controlPoint2" make_point
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method lineWidth =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "lineWidth")[])
       : float)
  method setLineWidth (lineWidth : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLineWidth:")
      [make_float lineWidth]) : unit)
  method lineCapStyle =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "lineCapStyle")[])
       : int)
  method setLineCapStyle (lineCapStyle : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLineCapStyle:")
      [make_int lineCapStyle]) : unit)
  method lineJoinStyle =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "lineJoinStyle")[])
       : int)
  method setLineJoinStyle (lineJoinStyle : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLineJoinStyle:")
      [make_int lineJoinStyle]) : unit)
  method windingRule =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "windingRule")[])
       : int)
  method setWindingRule (windingRule : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWindingRule:")
      [make_int windingRule]) : unit)
  method miterLimit =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "miterLimit")[])
       : float)
  method setMiterLimit (miterLimit : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMiterLimit:")
      [make_float miterLimit]) : unit)
  method flatness =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "flatness")[])
       : float)
  method setFlatness (flatness : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFlatness:")
      [make_float flatness]) : unit)
  method getLineDash_count_phase  (pattern : [`float] Objc.t) (count : [`int] Objc.t) (phase : [`float] Objc.t) =
    let sel, args = (
      Objc.arg pattern "getLineDash" make_pointer_from_object
      ++ Objc.arg count "count" make_pointer_from_object
      ++ Objc.arg phase "phase" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method setLineDash_count_phase  (pattern : (*pointer to const float*) unsupported) (count : int) (phase : float) =
    let sel, args = (
      Objc.arg pattern "setLineDash" (*pointer to const float*) unsupported
      ++ Objc.arg count "count" make_int
      ++ Objc.arg phase "phase" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method stroke =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stroke")[])
       : unit)
  method fill =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "fill")[])
       : unit)
  method addClip =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addClip")[])
       : unit)
  method setClip =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setClip")[])
       : unit)
  method bezierPathByFlatteningPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "bezierPathByFlatteningPath")[])
       : [`NSBezierPath] Objc.id))
  method bezierPathByReversingPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "bezierPathByReversingPath")[])
       : [`NSBezierPath] Objc.id))
  method transformUsingAffineTransform (transform : [`NSAffineTransform] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "transformUsingAffineTransform:")
      [make_pointer_from_object transform]) : unit)
  method isEmpty =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEmpty")[])
       : bool)
  method currentPoint =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "currentPoint")[])
       : NSPoint.t)
  method controlPointBounds =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "controlPointBounds")[])
       : NSRect.t)
  method bounds =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "bounds")[])
       : NSRect.t)
  method elementCount =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "elementCount")[])
       : int)
(*  UNSUPPORTED
  method elementAtIndex_associatedPoints  (index : int) (points : (*NSPointArray*) unsupported) =
    let sel, args = (
      Objc.arg index "elementAtIndex" make_int
      ++ Objc.arg points "associatedPoints" (*NSPointArray*) unsupported
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)

*)
  method elementAtIndex (index : int) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "elementAtIndex:")
      [make_int index]) : int)
(*  UNSUPPORTED
  method setAssociatedPoints_atIndex  (points : (*NSPointArray*) unsupported) (index : int) =
    let sel, args = (
      Objc.arg points "setAssociatedPoints" (*NSPointArray*) unsupported
      ++ Objc.arg index "atIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method appendBezierPath (path : [`NSBezierPath] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "appendBezierPath:")
      [make_pointer_from_object path]) : unit)
  method appendBezierPathWithRect (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "appendBezierPathWithRect:")
      [make_rect rect]) : unit)
(*  UNSUPPORTED
  method appendBezierPathWithPoints_count  (points : (*NSPointArray*) unsupported) (count : int) =
    let sel, args = (
      Objc.arg points "appendBezierPathWithPoints" (*NSPointArray*) unsupported
      ++ Objc.arg count "count" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method appendBezierPathWithOvalInRect (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "appendBezierPathWithOvalInRect:")
      [make_rect rect]) : unit)
  method appendBezierPathWithArcWithCenter_radius_startAngle_endAngle_clockwise  (center : NSPoint.t) (radius : float) (startAngle : float) (endAngle : float) (clockwise : bool) =
    let sel, args = (
      Objc.arg center "appendBezierPathWithArcWithCenter" make_point
      ++ Objc.arg radius "radius" make_float
      ++ Objc.arg startAngle "startAngle" make_float
      ++ Objc.arg endAngle "endAngle" make_float
      ++ Objc.arg clockwise "clockwise" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method appendBezierPathWithArcWithCenter_radius_startAngle_endAngle  (center : NSPoint.t) (radius : float) (startAngle : float) (endAngle : float) =
    let sel, args = (
      Objc.arg center "appendBezierPathWithArcWithCenter" make_point
      ++ Objc.arg radius "radius" make_float
      ++ Objc.arg startAngle "startAngle" make_float
      ++ Objc.arg endAngle "endAngle" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method appendBezierPathWithArcFromPoint_toPoint_radius  (point1 : NSPoint.t) (point2 : NSPoint.t) (radius : float) =
    let sel, args = (
      Objc.arg point1 "appendBezierPathWithArcFromPoint" make_point
      ++ Objc.arg point2 "toPoint" make_point
      ++ Objc.arg radius "radius" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method appendBezierPathWithGlyph_inFont  (glyph : (*NSGlyph*) unsupported) (font : [`NSFont] Objc.t) =
    let sel, args = (
      Objc.arg glyph "appendBezierPathWithGlyph" (*NSGlyph*) unsupported
      ++ Objc.arg font "inFont" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method appendBezierPathWithGlyphs_count_inFont  (glyphs : [`NSGlyph] Objc.t) (count : int) (font : [`NSFont] Objc.t) =
    let sel, args = (
      Objc.arg glyphs "appendBezierPathWithGlyphs" make_pointer_from_object
      ++ Objc.arg count "count" make_int
      ++ Objc.arg font "inFont" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method appendBezierPathWithPackedGlyphs (packedGlyphs : string) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "appendBezierPathWithPackedGlyphs:")
      [make_string packedGlyphs]) : unit)
  method containsPoint (point : NSPoint.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "containsPoint:")
      [make_point point]) : bool)
  method cachesBezierPath =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "cachesBezierPath")[])
       : bool)
  method setCachesBezierPath (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCachesBezierPath:")
      [make_bool flag]) : unit)
end
