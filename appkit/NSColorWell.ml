open Objc
open NSControl


external init : unit -> unit = "caml_init_NSColorWell"
let _ = init()
(* Class object for NSColorWell *)
let class_NSColorWell = object
   val o = Classes.find "NSColorWell"
   method _new = (Objc.objcnew o : [`NSColorWell] nativeNSObject)
end
(* Encapsulation for native instance of NSColorWell *)
class native_NSColorWell = fun (o : [`NSColorWell] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method deactivate =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deactivate:")[]) : unit)
   method activate (exclusive : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "activate:")[make_bool exclusive]) : unit)
   method isActive =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isActive:")[]) : bool)
(*  UNSUPPORTED
   method drawWellInside (insideRect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "drawWellInside:")[(*NSRect*) unsupported insideRect]) : unit)

*)
   method isBordered =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isBordered:")[]) : bool)
   method setBordered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBordered:")[make_bool flag]) : unit)
   method takeColorFrom (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "takeColorFrom:")[make_pointer_from_object sender]) : unit)
   method setColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setColor:")[make_pointer_from_object color]) : unit)
   method color =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "color:")[]) : [`NSColor] Objc.nativeNSObject)
end
