(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSScreen *)
class virtual methods = object (self)
  method virtual repr : [`NSScreen] Objc.id
(*  UNSUPPORTED
  method depth =
    ((*NSWindowDepth*) unsupported (Objc.invoke (*NSWindowDepth*) Objc.tag_unsupported self#repr (Selector.find "depth")[])
       : (*NSWindowDepth*) unsupported)

*)
(*  UNSUPPORTED
  method frame =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "frame")[])
       : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method visibleFrame =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "visibleFrame")[])
       : (*NSRect*) unsupported)

*)
  method deviceDescription =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "deviceDescription")[])
       : [`NSDictionary] Objc.id))
(*  UNSUPPORTED
  method supportedWindowDepths =
    ((*pointer to const NSWindowDepth*) unsupported (Objc.invoke (*pointer to const NSWindowDepth*) Objc.tag_unsupported self#repr (Selector.find "supportedWindowDepths")[])
       : (*pointer to const NSWindowDepth*) unsupported)

*)
  method userSpaceScaleFactor =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "userSpaceScaleFactor")[])
       : float)
end
