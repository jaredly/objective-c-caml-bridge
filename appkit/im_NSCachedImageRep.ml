(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCachedImageRep *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithWindow_rect  (win : [`NSWindow] Objc.t) (rect : NSRect.t) =
    let sel, args = (
      Objc.arg win "initWithWindow" make_pointer_from_object
      ++ Objc.arg rect "rect" make_rect
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithSize_depth_separate_alpha  (size : NSSize.t) (depth : int) (flag : bool) (alpha : bool) =
    let sel, args = (
      Objc.arg size "initWithSize" make_size
      ++ Objc.arg depth "depth" make_int
      ++ Objc.arg flag "separate" make_bool
      ++ Objc.arg alpha "alpha" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method window =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "window")[])
       : [`NSWindow] Objc.id))
  method rect =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "rect")[])
       : NSRect.t)
end
