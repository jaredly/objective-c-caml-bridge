open Objc
open NSImageRep
open NSGraphics


external init : unit -> unit = "caml_init_NSCIImageRep"
let _ = init()
(* Class object for NSCIImageRep *)
let class_NSCIImageRep = object
   val o = Classes.find "NSCIImageRep"
   method _new = (Objc.objcnew o : [`NSCIImageRep] nativeNSObject)
   method imageRepWithCIImage (image : [`CIImage] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageRepWithCIImage:")[make_pointer_from_object image]) : [`NSCIImageRep] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSCIImageRep *)
class native_NSCIImageRep = fun (o : [`NSCIImageRep] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithCIImage (image : [`CIImage] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithCIImage:")[make_pointer_from_object image]) : [`NSObject] Objc.nativeNSObject)
   method l_CIImage =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_CIImage:")[]) : [`CIImage] Objc.nativeNSObject)
end
(* Class object for CIImage *)
let class_CIImage = object
   val o = Classes.find "CIImage"
   method _new = (Objc.objcnew o : [`CIImage] nativeNSObject)
(* methods for category NSAppKitAdditions *)
end
(* Encapsulation for native instance of CIImage *)
class native_CIImage = fun (o : [`CIImage] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSAppKitAdditions *)
   method initWithBitmapImageRep (bitmapImageRep : [`NSBitmapImageRep] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithBitmapImageRep:")[make_pointer_from_object bitmapImageRep]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method drawInRect  ~fromRect:(fromRect : (*NSRect*) unsupported ) ~operation:(op : (*NSCompositingOperation*) unsupported ) ~fraction:(delta : float ) (rect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg rect "drawInRect" (*NSRect*) unsupported
       ++ Objc.arg fromRect "fromRect" (*NSRect*) unsupported
       ++ Objc.arg op "operation" (*NSCompositingOperation*) unsupported
       ++ Objc.arg delta "fraction" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method drawAtPoint  ~fromRect:(fromRect : (*NSRect*) unsupported ) ~operation:(op : (*NSCompositingOperation*) unsupported ) ~fraction:(delta : float ) (point : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg point "drawAtPoint" (*NSPoint*) unsupported
       ++ Objc.arg fromRect "fromRect" (*NSRect*) unsupported
       ++ Objc.arg op "operation" (*NSCompositingOperation*) unsupported
       ++ Objc.arg delta "fraction" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
end
