(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGeometry
open NSGraphics


external init : unit -> unit = "caml_init_NSScreen"
let _ = init()
let make_NSObject_of_NSScreen (o : [`NSScreen] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSScreen *)
let class_NSScreen = object
   val repr = Classes.find "NSScreen"
   method _new = (Objc.objcnew repr : [`NSScreen] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSScreen] nativeNSObject)
   method screens =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "screens:")[]) : [`NSArray] Objc.nativeNSObject)
   method mainScreen =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "mainScreen:")[]) : [`NSScreen] Objc.nativeNSObject)
   method deepestScreen =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "deepestScreen:")[]) : [`NSScreen] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSScreen *)
class native_NSScreen = fun (o : [`NSScreen] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSScreen o) as super
(*  UNSUPPORTED
   method depth =
     ((*NSWindowDepth*) unsupported (Objc.invoke (*NSWindowDepth*) Objc.tag_unsupported repr (Selector.find "depth:")[]) : (*NSWindowDepth*) unsupported)

*)
(*  UNSUPPORTED
   method frame =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "frame:")[]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method visibleFrame =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "visibleFrame:")[]) : (*NSRect*) unsupported)

*)
   method deviceDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "deviceDescription:")[]) : [`NSDictionary] Objc.nativeNSObject)
(*  UNSUPPORTED
   method supportedWindowDepths =
     ((*pointer to const NSWindowDepth*) unsupported (Objc.invoke (*pointer to const NSWindowDepth*) Objc.tag_unsupported repr (Selector.find "supportedWindowDepths:")[]) : (*pointer to const NSWindowDepth*) unsupported)

*)
   method userSpaceScaleFactor =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "userSpaceScaleFactor:")[]) : float)
end
