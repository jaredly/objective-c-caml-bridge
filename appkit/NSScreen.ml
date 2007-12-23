open Objc
open NSObject
open NSGeometry
open NSGraphics


external init : unit -> unit = "caml_init_NSScreen"
let _ = init()
(* Class object for NSScreen *)
let class_NSScreen = object
   val o = Classes.find "NSScreen"
   method _new = (Objc.objcnew o : [`NSScreen] nativeNSObject)
   method screens =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "screens:")[]) : [`NSArray] Objc.nativeNSObject)
   method mainScreen =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "mainScreen:")[]) : [`NSScreen] Objc.nativeNSObject)
   method deepestScreen =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "deepestScreen:")[]) : [`NSScreen] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSScreen *)
class native_NSScreen = fun (o : [`NSScreen] nativeNSObject) -> object (self)
   val o = o
   method o = o
(*  UNSUPPORTED
   method depth =
     ((*NSWindowDepth*) unsupported (Objc.invoke (*NSWindowDepth*) Objc.tag_unsupported o (Selector.find "depth:")[]) : (*NSWindowDepth*) unsupported)

*)
(*  UNSUPPORTED
   method frame =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "frame:")[]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method visibleFrame =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "visibleFrame:")[]) : (*NSRect*) unsupported)

*)
   method deviceDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "deviceDescription:")[]) : [`NSDictionary] Objc.nativeNSObject)
(*  UNSUPPORTED
   method supportedWindowDepths =
     ((*pointer to const NSWindowDepth*) unsupported (Objc.invoke (*pointer to const NSWindowDepth*) Objc.tag_unsupported o (Selector.find "supportedWindowDepths:")[]) : (*pointer to const NSWindowDepth*) unsupported)

*)
   method userSpaceScaleFactor =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "userSpaceScaleFactor:")[]) : float)
end
