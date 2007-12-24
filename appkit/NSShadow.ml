(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGeometry


external init : unit -> unit = "caml_init_NSShadow"
let _ = init()
let make_NSObject_of_NSShadow (o : [`NSShadow] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSShadow *)
let class_NSShadow = object
   val repr = Classes.find "NSShadow"
   method _new = (Objc.objcnew repr : [`NSShadow] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSShadow] nativeNSObject)
end
(* Encapsulation for native instance of NSShadow *)
class native_NSShadow = fun (o : [`NSShadow] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSShadow o) as super
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method shadowOffset =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "shadowOffset:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setShadowOffset (offset : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShadowOffset:")[(*NSSize*) unsupported offset]) : unit)

*)
   method shadowBlurRadius =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "shadowBlurRadius:")[]) : float)
   method setShadowBlurRadius (_val : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShadowBlurRadius:")[make_float _val]) : unit)
   method shadowColor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "shadowColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setShadowColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShadowColor:")[make_pointer_from_object color]) : unit)
   method set =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "set:")[]) : unit)
end
