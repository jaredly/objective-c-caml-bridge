open Objc
open NSValue
open NSCoder


external init : unit -> unit = "caml_init_NSGeometry"
let _ = init()
(* Class object for NSCoder *)
let class_NSCoder = object
   val o = Classes.find "NSCoder"
   method _new = (Objc.objcnew o : [`NSCoder] nativeNSObject)
(* methods for category NSGeometryCoding *)
end
(* Encapsulation for native instance of NSCoder *)
class native_NSCoder = fun (o : [`NSCoder] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSGeometryCoding *)
(*  UNSUPPORTED
   method encodePoint (point : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "encodePoint:")[(*NSPoint*) unsupported point]) : unit)

*)
(*  UNSUPPORTED
   method decodePoint =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported o (Selector.find "decodePoint:")[]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
   method encodeSize (size : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "encodeSize:")[(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
   method decodeSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "decodeSize:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method encodeRect (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "encodeRect:")[(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
   method decodeRect =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "decodeRect:")[]) : (*NSRect*) unsupported)

*)
end
(* Class object for NSValue *)
let class_NSValue = object
   val o = Classes.find "NSValue"
   method _new = (Objc.objcnew o : [`NSValue] nativeNSObject)
(* methods for category NSValueGeometryExtensions *)
(*  UNSUPPORTED
   method valueWithPoint (point : (*NSPoint*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueWithPoint:")[(*NSPoint*) unsupported point]) : [`NSValue] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method valueWithSize (size : (*NSSize*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueWithSize:")[(*NSSize*) unsupported size]) : [`NSValue] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method valueWithRect (rect : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueWithRect:")[(*NSRect*) unsupported rect]) : [`NSValue] Objc.nativeNSObject)

*)
end
(* Encapsulation for native instance of NSValue *)
class native_NSValue = fun (o : [`NSValue] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSValueGeometryExtensions *)
(*  UNSUPPORTED
   method pointValue =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported o (Selector.find "pointValue:")[]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
   method sizeValue =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "sizeValue:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method rectValue =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "rectValue:")[]) : (*NSRect*) unsupported)

*)
end
