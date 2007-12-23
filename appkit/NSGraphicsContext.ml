open Objc
open NSGraphics
open NSGeometry
open NSObject


external init : unit -> unit = "caml_init_NSGraphicsContext"
let _ = init()
(* Class object for NSGraphicsContext *)
let class_NSGraphicsContext = object
   val o = Classes.find "NSGraphicsContext"
   method _new = (Objc.objcnew o : [`NSGraphicsContext] nativeNSObject)
(* methods for category NSQuartzCoreAdditions *)
(* methods for category NSGraphicsContext_RenderingOptions *)
   method graphicsContextWithAttributes (attributes : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "graphicsContextWithAttributes:")[make_pointer_from_object attributes]) : [`NSGraphicsContext] Objc.nativeNSObject)
   method graphicsContextWithWindow (window : [`NSWindow] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "graphicsContextWithWindow:")[make_pointer_from_object window]) : [`NSGraphicsContext] Objc.nativeNSObject)
   method graphicsContextWithBitmapImageRep (bitmapRep : [`NSBitmapImageRep] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "graphicsContextWithBitmapImageRep:")[make_pointer_from_object bitmapRep]) : [`NSGraphicsContext] Objc.nativeNSObject)
   method graphicsContextWithGraphicsPort  ~flipped:(initialFlippedState : bool ) (graphicsPort : [`void] Objc.t) =
     let sel, args = (
       Objc.arg graphicsPort "graphicsContextWithGraphicsPort" make_pointer_from_object
       ++ Objc.arg initialFlippedState "flipped" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSGraphicsContext] Objc.nativeNSObject)
   method currentContext =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentContext:")[]) : [`NSGraphicsContext] Objc.nativeNSObject)
   method setCurrentContext (context : [`NSGraphicsContext] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setCurrentContext:")[make_pointer_from_object context]) : [`NSGraphicsContext] Objc.nativeNSObject)
   method currentContextDrawingToScreen =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentContextDrawingToScreen:")[]) : [`NSGraphicsContext] Objc.nativeNSObject)
   method saveGraphicsState =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "saveGraphicsState:")[]) : [`NSGraphicsContext] Objc.nativeNSObject)
   method restoreGraphicsState =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "restoreGraphicsState:")[]) : [`NSGraphicsContext] Objc.nativeNSObject)
   method setGraphicsState (gState : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setGraphicsState:")[make_int gState]) : [`NSGraphicsContext] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSGraphicsContext *)
class native_NSGraphicsContext = fun (o : [`NSGraphicsContext] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSQuartzCoreAdditions *)
   method l_CIContext =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_CIContext:")[]) : [`CIContext] Objc.nativeNSObject)
(* methods for category NSGraphicsContext_RenderingOptions *)
   method setShouldAntialias (antialias : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setShouldAntialias:")[make_bool antialias]) : unit)
   method shouldAntialias =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "shouldAntialias:")[]) : bool)
   method setImageInterpolation (interpolation : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setImageInterpolation:")[make_int interpolation]) : unit)
   method imageInterpolation =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "imageInterpolation:")[]) : int)
(*  UNSUPPORTED
   method setPatternPhase (phase : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPatternPhase:")[(*NSPoint*) unsupported phase]) : unit)

*)
(*  UNSUPPORTED
   method patternPhase =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported o (Selector.find "patternPhase:")[]) : (*NSPoint*) unsupported)

*)
   method setCompositingOperation (operation : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCompositingOperation:")[make_int operation]) : unit)
   method compositingOperation =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "compositingOperation:")[]) : int)
   method attributes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attributes:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method isDrawingToScreen =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isDrawingToScreen:")[]) : bool)
   method saveGraphicsState =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "saveGraphicsState:")[]) : unit)
   method restoreGraphicsState =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "restoreGraphicsState:")[]) : unit)
   method flushGraphics =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "flushGraphics:")[]) : unit)
   method focusStack =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "focusStack:")[]) : [`void] Objc.nativeNSObject)
   method setFocusStack (stack : [`void] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFocusStack:")[make_pointer_from_object stack]) : unit)
   method graphicsPort =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "graphicsPort:")[]) : [`void] Objc.nativeNSObject)
   method isFlipped =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isFlipped:")[]) : bool)
end
