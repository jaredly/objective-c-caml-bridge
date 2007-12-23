open Objc
open NSXMLNode


external init : unit -> unit = "caml_init_NSXMLDTDNode"
let _ = init()
(* Class object for NSXMLDTDNode *)
let class_NSXMLDTDNode = object
   val o = Classes.find "NSXMLDTDNode"
   method _new = (Objc.objcnew o : [`NSXMLDTDNode] nativeNSObject)
end
(* Encapsulation for native instance of NSXMLDTDNode *)
class native_NSXMLDTDNode = fun (o : [`NSXMLDTDNode] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithXMLString (string : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithXMLString:")[make_pointer_from_object string]) : [`NSObject] Objc.nativeNSObject)
   method setDTDKind (kind : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDTDKind:")[make_int kind]) : unit)
   method l_DTDKind =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "l_DTDKind:")[]) : int)
   method isExternal =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isExternal:")[]) : bool)
   method setPublicID (publicID : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPublicID:")[make_pointer_from_object publicID]) : unit)
   method publicID =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "publicID:")[]) : [`NSString] Objc.nativeNSObject)
   method setSystemID (systemID : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSystemID:")[make_pointer_from_object systemID]) : unit)
   method systemID =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "systemID:")[]) : [`NSString] Objc.nativeNSObject)
   method setNotationName (notationName : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNotationName:")[make_pointer_from_object notationName]) : unit)
   method notationName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "notationName:")[]) : [`NSString] Objc.nativeNSObject)
end
