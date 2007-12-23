open Objc
open NSObject
open NSGeometry
open NSFont


external init : unit -> unit = "caml_init_NSBezierPath"
let _ = init()
(* Class object for NSBezierPath *)
let class_NSBezierPath = object
   val o = Classes.find "NSBezierPath"
   method _new = (Objc.objcnew o : [`NSBezierPath] nativeNSObject)
   method bezierPath =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "bezierPath:")[]) : [`NSBezierPath] Objc.nativeNSObject)
(*  UNSUPPORTED
   method bezierPathWithRect (rect : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "bezierPathWithRect:")[(*NSRect*) unsupported rect]) : [`NSBezierPath] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method bezierPathWithOvalInRect (rect : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "bezierPathWithOvalInRect:")[(*NSRect*) unsupported rect]) : [`NSBezierPath] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method fillRect (rect : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fillRect:")[(*NSRect*) unsupported rect]) : [`NSBezierPath] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method strokeRect (rect : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "strokeRect:")[(*NSRect*) unsupported rect]) : [`NSBezierPath] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method clipRect (rect : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "clipRect:")[(*NSRect*) unsupported rect]) : [`NSBezierPath] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method strokeLineFromPoint  ~toPoint:(point2 : (*NSPoint*) unsupported ) (point1 : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg point1 "strokeLineFromPoint" (*NSPoint*) unsupported
       ++ Objc.arg point2 "toPoint" (*NSPoint*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSBezierPath] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method drawPackedGlyphs  ~atPoint:(point : (*NSPoint*) unsupported ) (packedGlyphs : string) =
     let sel, args = (
       Objc.arg packedGlyphs "drawPackedGlyphs" make_string
       ++ Objc.arg point "atPoint" (*NSPoint*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSBezierPath] Objc.nativeNSObject)

*)
   method setDefaultMiterLimit (limit : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setDefaultMiterLimit:")[make_float limit]) : [`NSBezierPath] Objc.nativeNSObject)
   method defaultMiterLimit =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultMiterLimit:")[]) : [`NSBezierPath] Objc.nativeNSObject)
   method setDefaultFlatness (flatness : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setDefaultFlatness:")[make_float flatness]) : [`NSBezierPath] Objc.nativeNSObject)
   method defaultFlatness =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultFlatness:")[]) : [`NSBezierPath] Objc.nativeNSObject)
   method setDefaultWindingRule (windingRule : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setDefaultWindingRule:")[make_int windingRule]) : [`NSBezierPath] Objc.nativeNSObject)
   method defaultWindingRule =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultWindingRule:")[]) : [`NSBezierPath] Objc.nativeNSObject)
   method setDefaultLineCapStyle (lineCapStyle : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setDefaultLineCapStyle:")[make_int lineCapStyle]) : [`NSBezierPath] Objc.nativeNSObject)
   method defaultLineCapStyle =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultLineCapStyle:")[]) : [`NSBezierPath] Objc.nativeNSObject)
   method setDefaultLineJoinStyle (lineJoinStyle : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setDefaultLineJoinStyle:")[make_int lineJoinStyle]) : [`NSBezierPath] Objc.nativeNSObject)
   method defaultLineJoinStyle =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultLineJoinStyle:")[]) : [`NSBezierPath] Objc.nativeNSObject)
   method setDefaultLineWidth (lineWidth : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setDefaultLineWidth:")[make_float lineWidth]) : [`NSBezierPath] Objc.nativeNSObject)
   method defaultLineWidth =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultLineWidth:")[]) : [`NSBezierPath] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSBezierPath *)
class native_NSBezierPath = fun (o : [`NSBezierPath] nativeNSObject) -> object (self)
   val o = o
   method o = o
(*  UNSUPPORTED
   method moveToPoint (point : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveToPoint:")[(*NSPoint*) unsupported point]) : unit)

*)
(*  UNSUPPORTED
   method lineToPoint (point : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "lineToPoint:")[(*NSPoint*) unsupported point]) : unit)

*)
(*  UNSUPPORTED
   method curveToPoint  ~controlPoint1:(controlPoint1 : (*NSPoint*) unsupported ) ~controlPoint2:(controlPoint2 : (*NSPoint*) unsupported ) (endPoint : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg endPoint "curveToPoint" (*NSPoint*) unsupported
       ++ Objc.arg controlPoint1 "controlPoint1" (*NSPoint*) unsupported
       ++ Objc.arg controlPoint2 "controlPoint2" (*NSPoint*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   method closePath =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "closePath:")[]) : unit)
   method removeAllPoints =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeAllPoints:")[]) : unit)
(*  UNSUPPORTED
   method relativeMoveToPoint (point : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "relativeMoveToPoint:")[(*NSPoint*) unsupported point]) : unit)

*)
(*  UNSUPPORTED
   method relativeLineToPoint (point : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "relativeLineToPoint:")[(*NSPoint*) unsupported point]) : unit)

*)
(*  UNSUPPORTED
   method relativeCurveToPoint  ~controlPoint1:(controlPoint1 : (*NSPoint*) unsupported ) ~controlPoint2:(controlPoint2 : (*NSPoint*) unsupported ) (endPoint : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg endPoint "relativeCurveToPoint" (*NSPoint*) unsupported
       ++ Objc.arg controlPoint1 "controlPoint1" (*NSPoint*) unsupported
       ++ Objc.arg controlPoint2 "controlPoint2" (*NSPoint*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   method lineWidth =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "lineWidth:")[]) : float)
   method setLineWidth (lineWidth : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLineWidth:")[make_float lineWidth]) : unit)
   method lineCapStyle =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "lineCapStyle:")[]) : int)
   method setLineCapStyle (lineCapStyle : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLineCapStyle:")[make_int lineCapStyle]) : unit)
   method lineJoinStyle =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "lineJoinStyle:")[]) : int)
   method setLineJoinStyle (lineJoinStyle : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLineJoinStyle:")[make_int lineJoinStyle]) : unit)
   method windingRule =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "windingRule:")[]) : int)
   method setWindingRule (windingRule : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setWindingRule:")[make_int windingRule]) : unit)
   method miterLimit =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "miterLimit:")[]) : float)
   method setMiterLimit (miterLimit : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMiterLimit:")[make_float miterLimit]) : unit)
   method flatness =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "flatness:")[]) : float)
   method setFlatness (flatness : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFlatness:")[make_float flatness]) : unit)
   method getLineDash  ~count:(count : [`int] Objc.t ) ~phase:(phase : [`float] Objc.t ) (pattern : [`float] Objc.t) =
     let sel, args = (
       Objc.arg pattern "getLineDash" make_pointer_from_object
       ++ Objc.arg count "count" make_pointer_from_object
       ++ Objc.arg phase "phase" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
(*  UNSUPPORTED
   method setLineDash  ~count:(count : int ) ~phase:(phase : float ) (pattern : (*pointer to const float*) unsupported) =
     let sel, args = (
       Objc.arg pattern "setLineDash" (*pointer to const float*) unsupported
       ++ Objc.arg count "count" make_int
       ++ Objc.arg phase "phase" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   method stroke =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "stroke:")[]) : unit)
   method fill =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "fill:")[]) : unit)
   method addClip =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addClip:")[]) : unit)
   method setClip =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setClip:")[]) : unit)
   method bezierPathByFlatteningPath =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "bezierPathByFlatteningPath:")[]) : [`NSBezierPath] Objc.nativeNSObject)
   method bezierPathByReversingPath =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "bezierPathByReversingPath:")[]) : [`NSBezierPath] Objc.nativeNSObject)
   method transformUsingAffineTransform (transform : [`NSAffineTransform] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "transformUsingAffineTransform:")[make_pointer_from_object transform]) : unit)
   method isEmpty =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEmpty:")[]) : bool)
(*  UNSUPPORTED
   method currentPoint =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported o (Selector.find "currentPoint:")[]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
   method controlPointBounds =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "controlPointBounds:")[]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method bounds =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "bounds:")[]) : (*NSRect*) unsupported)

*)
   method elementCount =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "elementCount:")[]) : int)
(*  UNSUPPORTED
   method elementAtIndex  ?associatedPoints:(points : (*NSPointArray*) unsupported option) (index : int) =
     let sel, args = (
       Objc.arg index "elementAtIndex" make_int
       ++ Objc.opt_arg points "associatedPoints" (*NSPointArray*) unsupported
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int o (Selector.find_list sel) args) : int)

*)
   (* skipping selector elementAtIndex *)
(*  UNSUPPORTED
   method setAssociatedPoints  ~atIndex:(index : int ) (points : (*NSPointArray*) unsupported) =
     let sel, args = (
       Objc.arg points "setAssociatedPoints" (*NSPointArray*) unsupported
       ++ Objc.arg index "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   method appendBezierPath (path : [`NSBezierPath] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "appendBezierPath:")[make_pointer_from_object path]) : unit)
(*  UNSUPPORTED
   method appendBezierPathWithRect (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "appendBezierPathWithRect:")[(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
   method appendBezierPathWithPoints  ~count:(count : int ) (points : (*NSPointArray*) unsupported) =
     let sel, args = (
       Objc.arg points "appendBezierPathWithPoints" (*NSPointArray*) unsupported
       ++ Objc.arg count "count" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method appendBezierPathWithOvalInRect (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "appendBezierPathWithOvalInRect:")[(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
   method appendBezierPathWithArcWithCenter  ~radius:(radius : float ) ~startAngle:(startAngle : float ) ~endAngle:(endAngle : float ) ?clockwise:(clockwise : bool option) (center : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg center "appendBezierPathWithArcWithCenter" (*NSPoint*) unsupported
       ++ Objc.arg radius "radius" make_float
       ++ Objc.arg startAngle "startAngle" make_float
       ++ Objc.arg endAngle "endAngle" make_float
       ++ Objc.opt_arg clockwise "clockwise" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   (* skipping selector appendBezierPathWithArcWithCenter:radius:startAngle:endAngle *)
(*  UNSUPPORTED
   method appendBezierPathWithArcFromPoint  ~toPoint:(point2 : (*NSPoint*) unsupported ) ~radius:(radius : float ) (point1 : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg point1 "appendBezierPathWithArcFromPoint" (*NSPoint*) unsupported
       ++ Objc.arg point2 "toPoint" (*NSPoint*) unsupported
       ++ Objc.arg radius "radius" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method appendBezierPathWithGlyph  ~inFont:(font : [`NSFont] Objc.t ) (glyph : (*NSGlyph*) unsupported) =
     let sel, args = (
       Objc.arg glyph "appendBezierPathWithGlyph" (*NSGlyph*) unsupported
       ++ Objc.arg font "inFont" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   method appendBezierPathWithGlyphs  ~count:(count : int ) ~inFont:(font : [`NSFont] Objc.t ) (glyphs : [`NSGlyph] Objc.t) =
     let sel, args = (
       Objc.arg glyphs "appendBezierPathWithGlyphs" make_pointer_from_object
       ++ Objc.arg count "count" make_int
       ++ Objc.arg font "inFont" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method appendBezierPathWithPackedGlyphs (packedGlyphs : string) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "appendBezierPathWithPackedGlyphs:")[make_string packedGlyphs]) : unit)
(*  UNSUPPORTED
   method containsPoint (point : (*NSPoint*) unsupported) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "containsPoint:")[(*NSPoint*) unsupported point]) : bool)

*)
   method cachesBezierPath =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "cachesBezierPath:")[]) : bool)
   method setCachesBezierPath (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCachesBezierPath:")[make_bool flag]) : unit)
end
