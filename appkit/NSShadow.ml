open Objc
open NSObject
open NSGeometry


external init : unit -> unit = "caml_init_NSShadow"
let _ = init()
(* Class object for NSShadow *)
let class_NSShadow = object
   val o = Classes.find "NSShadow"
   method _new = (Objc.objcnew o : [`NSShadow] nativeNSObject)
end
(* Encapsulation for native instance of NSShadow *)
class native_NSShadow = fun (o : [`NSShadow] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method shadowOffset =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "shadowOffset:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setShadowOffset (offset : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setShadowOffset:")[(*NSSize*) unsupported offset]) : unit)

*)
   method shadowBlurRadius =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "shadowBlurRadius:")[]) : float)
   method setShadowBlurRadius (_val : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setShadowBlurRadius:")[make_float _val]) : unit)
   method shadowColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "shadowColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setShadowColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setShadowColor:")[make_pointer_from_object color]) : unit)
   method set =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "set:")[]) : unit)
end
