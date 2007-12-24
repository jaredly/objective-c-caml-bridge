(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSString
open NSAttributedString


external init : unit -> unit = "caml_init_NSStringDrawing"
let _ = init()
(* Class object for NSString *)
let class_NSString = object
   val repr = Classes.find "NSString"
   method _new = (Objc.objcnew repr : [`NSString] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSString] nativeNSObject)
(* methods for category NSExtendedStringDrawing *)
(* methods for category NSStringDrawing *)
end
(* Encapsulation for native instance of NSString *)
class native_NSString = fun (o : [`NSString] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSExtendedStringDrawing *)
(*  UNSUPPORTED
   method drawWithRect  ~options:(options : int ) ~attributes:(attributes : [`NSDictionary] Objc.t ) (rect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg rect "drawWithRect" (*NSRect*) unsupported
       ++ Objc.arg options "options" make_int
       ++ Objc.arg attributes "attributes" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method boundingRectWithSize  ~options:(options : int ) ~attributes:(attributes : [`NSDictionary] Objc.t ) (size : (*NSSize*) unsupported) =
     let sel, args = (
       Objc.arg size "boundingRectWithSize" (*NSSize*) unsupported
       ++ Objc.arg options "options" make_int
       ++ Objc.arg attributes "attributes" make_pointer_from_object
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
(* methods for category NSStringDrawing *)
(*  UNSUPPORTED
   method sizeWithAttributes (attrs : [`NSDictionary] Objc.t) =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "sizeWithAttributes:")[make_pointer_from_object attrs]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method drawAtPoint  ~withAttributes:(attrs : [`NSDictionary] Objc.t ) (point : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg point "drawAtPoint" (*NSPoint*) unsupported
       ++ Objc.arg attrs "withAttributes" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method drawInRect  ~withAttributes:(attrs : [`NSDictionary] Objc.t ) (rect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg rect "drawInRect" (*NSRect*) unsupported
       ++ Objc.arg attrs "withAttributes" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
end
(* Class object for NSAttributedString *)
let class_NSAttributedString = object
   val repr = Classes.find "NSAttributedString"
   method _new = (Objc.objcnew repr : [`NSAttributedString] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSAttributedString] nativeNSObject)
(* methods for category NSExtendedStringDrawing *)
(* methods for category NSStringDrawing *)
end
(* Encapsulation for native instance of NSAttributedString *)
class native_NSAttributedString = fun (o : [`NSAttributedString] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSExtendedStringDrawing *)
(*  UNSUPPORTED
   method drawWithRect  ~options:(options : int ) (rect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg rect "drawWithRect" (*NSRect*) unsupported
       ++ Objc.arg options "options" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method boundingRectWithSize  ~options:(options : int ) (size : (*NSSize*) unsupported) =
     let sel, args = (
       Objc.arg size "boundingRectWithSize" (*NSSize*) unsupported
       ++ Objc.arg options "options" make_int
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
(* methods for category NSStringDrawing *)
(*  UNSUPPORTED
   method size =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "size:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method drawAtPoint (point : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawAtPoint:")[(*NSPoint*) unsupported point]) : unit)

*)
(*  UNSUPPORTED
   method drawInRect (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawInRect:")[(*NSRect*) unsupported rect]) : unit)

*)
end
