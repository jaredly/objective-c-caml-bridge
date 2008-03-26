(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSScreen *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method depth =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "depth")[])
       : int)
  method frame =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "frame")[])
       : NSRect.t)
  method visibleFrame =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "visibleFrame")[])
       : NSRect.t)
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
