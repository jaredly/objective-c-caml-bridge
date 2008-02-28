(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSBezierPath] id) -> object
  inherit Im_NSBezierPath.methods
  method repr = r
end

(* Class object for NSBezierPath *)
let c = Classes.find "NSBezierPath"
let _new()= (Objc.objcnew c : [`NSBezierPath] id)
let alloc() = (Objc.objcalloc c : [`NSBezierPath] id)
let bezierPath () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "bezierPath")[])
       : [`NSBezierPath] Objc.id))
(*  UNSUPPORTED
let bezierPathWithRect (rect : (*NSRect*) unsupported) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "bezierPathWithRect:")
      [(*NSRect*) unsupported rect]) : [`NSBezierPath] Objc.id))

*)
(*  UNSUPPORTED
let bezierPathWithOvalInRect (rect : (*NSRect*) unsupported) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "bezierPathWithOvalInRect:")
      [(*NSRect*) unsupported rect]) : [`NSBezierPath] Objc.id))

*)
(*  UNSUPPORTED
let fillRect (rect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "fillRect:")
      [(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
let strokeRect (rect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "strokeRect:")
      [(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
let clipRect (rect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "clipRect:")
      [(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
let strokeLineFromPoint  ~toPoint:(point2 : (*NSPoint*) unsupported ) (point1 : (*NSPoint*) unsupported) =
    let sel, args = (
      Objc.arg point1 "strokeLineFromPoint" (*NSPoint*) unsupported
      ++ Objc.arg point2 "toPoint" (*NSPoint*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
let drawPackedGlyphs  ~atPoint:(point : (*NSPoint*) unsupported ) (packedGlyphs : string) =
    let sel, args = (
      Objc.arg packedGlyphs "drawPackedGlyphs" make_string
      ++ Objc.arg point "atPoint" (*NSPoint*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)

*)
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
