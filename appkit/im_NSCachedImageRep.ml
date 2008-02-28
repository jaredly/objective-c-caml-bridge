(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCachedImageRep *)
class virtual methods = object (self)
  method virtual repr : [`NSCachedImageRep] Objc.id
(*  UNSUPPORTED
  method initWithWindow  ~rect:(rect : (*NSRect*) unsupported ) (win : [`NSWindow] Objc.t) =
    let sel, args = (
      Objc.arg win "initWithWindow" make_pointer_from_object
      ++ Objc.arg rect "rect" (*NSRect*) unsupported
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
(*  UNSUPPORTED
  method initWithSize  ~depth:(depth : (*NSWindowDepth*) unsupported ) ~separate:(flag : bool ) ~alpha:(alpha : bool ) (size : (*NSSize*) unsupported) =
    let sel, args = (
      Objc.arg size "initWithSize" (*NSSize*) unsupported
      ++ Objc.arg depth "depth" (*NSWindowDepth*) unsupported
      ++ Objc.arg flag "separate" make_bool
      ++ Objc.arg alpha "alpha" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method window =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "window")[])
       : [`NSWindow] Objc.id))
(*  UNSUPPORTED
  method rect =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "rect")[])
       : (*NSRect*) unsupported)

*)
end
