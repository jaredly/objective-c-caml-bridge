(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSControl


external init : unit -> unit = "caml_init_NSColorWell"
let _ = init()
let make_NSControl_of_NSColorWell (o : [`NSColorWell] nativeNSObject) = (Obj.magic o : [`NSControl] nativeNSObject)
(* Class object for NSColorWell *)
let class_NSColorWell = object
   val repr = Classes.find "NSColorWell"
   method _new = (Objc.objcnew repr : [`NSColorWell] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSColorWell] nativeNSObject)
end
(* Encapsulation for native instance of NSColorWell *)
class native_NSColorWell = fun (o : [`NSColorWell] nativeNSObject) -> object (self)
   inherit native_NSControl (make_NSControl_of_NSColorWell o) as super
   method deactivate =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "deactivate:")[]) : unit)
   method activate (exclusive : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "activate:")[make_bool exclusive]) : unit)
   method isActive =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isActive:")[]) : bool)
(*  UNSUPPORTED
   method drawWellInside (insideRect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawWellInside:")[(*NSRect*) unsupported insideRect]) : unit)

*)
   method isBordered =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isBordered:")[]) : bool)
   method setBordered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBordered:")[make_bool flag]) : unit)
   method takeColorFrom (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "takeColorFrom:")[make_pointer_from_object sender]) : unit)
   method setColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setColor:")[make_pointer_from_object color]) : unit)
   method color =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "color:")[]) : [`NSColor] Objc.nativeNSObject)
end
