(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSQuartzCoreAdditions.methods_NSGraphicsContext
  inherit AppKit_cati_NSGraphicsContext_RenderingOptions.methods_NSGraphicsContext
  inherit Im_NSGraphicsContext.methods
end

class t = fun (r :[`NSGraphicsContext] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSGraphicsContext *)
let c = Classes.find "NSGraphicsContext"
let _new()= (Objc.objcnew c : [`NSGraphicsContext] id)
let alloc() = (Objc.objcalloc c : [`NSGraphicsContext] id)
(* class methods for category NSQuartzCoreAdditions of NSGraphicsContext *)
(* class methods for category NSGraphicsContext_RenderingOptions of NSGraphicsContext *)
let graphicsContextWithAttributes (attributes : [`NSDictionary] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "graphicsContextWithAttributes:")
      [make_pointer_from_object attributes]) : [`NSGraphicsContext] Objc.id))
let graphicsContextWithWindow (window : [`NSWindow] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "graphicsContextWithWindow:")
      [make_pointer_from_object window]) : [`NSGraphicsContext] Objc.id))
let graphicsContextWithBitmapImageRep (bitmapRep : [`NSBitmapImageRep] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "graphicsContextWithBitmapImageRep:")
      [make_pointer_from_object bitmapRep]) : [`NSGraphicsContext] Objc.id))
let graphicsContextWithGraphicsPort_flipped  (graphicsPort : [`void] Objc.t) (initialFlippedState : bool) =
    let sel, args = (
      Objc.arg graphicsPort "graphicsContextWithGraphicsPort" make_pointer_from_object
      ++ Objc.arg initialFlippedState "flipped" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSGraphicsContext] Objc.id))
let currentContext () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentContext")[])
       : [`NSGraphicsContext] Objc.id))
let setCurrentContext (context : [`NSGraphicsContext] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setCurrentContext:")
      [make_pointer_from_object context]) : unit)
let currentContextDrawingToScreen () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "currentContextDrawingToScreen")[])
       : bool)
let saveGraphicsState () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "saveGraphicsState")[])
       : unit)
let restoreGraphicsState () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "restoreGraphicsState")[])
       : unit)
let setGraphicsState (gState : int) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setGraphicsState:")
      [make_int gState]) : unit)
