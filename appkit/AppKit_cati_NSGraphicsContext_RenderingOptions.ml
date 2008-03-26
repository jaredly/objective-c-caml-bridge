(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSGraphicsContext_RenderingOptions of NSGraphicsContext *)
class virtual methods_NSGraphicsContext = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setShouldAntialias (antialias : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShouldAntialias:")
      [make_bool antialias]) : unit)
  method shouldAntialias =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldAntialias")[])
       : bool)
  method setImageInterpolation (interpolation : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImageInterpolation:")
      [make_int interpolation]) : unit)
  method imageInterpolation =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "imageInterpolation")[])
       : int)
  method setPatternPhase (phase : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPatternPhase:")
      [make_point phase]) : unit)
  method patternPhase =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "patternPhase")[])
       : NSPoint.t)
  method setCompositingOperation (operation : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCompositingOperation:")
      [make_int operation]) : unit)
  method compositingOperation =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "compositingOperation")[])
       : int)
end
