open Objc
open NSImageRep
open NSGraphics


external init : unit -> unit = "caml_init_NSCachedImageRep"
let _ = init()
(* Class object for NSCachedImageRep *)
let class_NSCachedImageRep = object
   val o = Classes.find "NSCachedImageRep"
   method _new = (Objc.objcnew o : [`NSCachedImageRep] nativeNSObject)
end
(* Encapsulation for native instance of NSCachedImageRep *)
class native_NSCachedImageRep = fun (o : [`NSCachedImageRep] nativeNSObject) -> object (self)
   val o = o
   method o = o
(*  UNSUPPORTED
   method initWithWindow  ~rect:(rect : (*NSRect*) unsupported ) (win : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg win "initWithWindow" make_pointer_from_object
       ++ Objc.arg rect "rect" (*NSRect*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method initWithSize  ~depth:(depth : (*NSWindowDepth*) unsupported ) ~separate:(flag : bool ) ~alpha:(alpha : bool ) (size : (*NSSize*) unsupported) =
     let sel, args = (
       Objc.arg size "initWithSize" (*NSSize*) unsupported
       ++ Objc.arg depth "depth" (*NSWindowDepth*) unsupported
       ++ Objc.arg flag "separate" make_bool
       ++ Objc.arg alpha "alpha" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method window =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "window:")[]) : [`NSWindow] Objc.nativeNSObject)
(*  UNSUPPORTED
   method rect =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "rect:")[]) : (*NSRect*) unsupported)

*)
end
