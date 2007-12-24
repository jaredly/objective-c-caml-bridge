(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSXMLNode


external init : unit -> unit = "caml_init_NSXMLDTDNode"
let _ = init()
let make_NSXMLNode_of_NSXMLDTDNode (o : [`NSXMLDTDNode] nativeNSObject) = (Obj.magic o : [`NSXMLNode] nativeNSObject)
(* Class object for NSXMLDTDNode *)
let class_NSXMLDTDNode = object
   val repr = Classes.find "NSXMLDTDNode"
   method _new = (Objc.objcnew repr : [`NSXMLDTDNode] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSXMLDTDNode] nativeNSObject)
end
(* Encapsulation for native instance of NSXMLDTDNode *)
class native_NSXMLDTDNode = fun (o : [`NSXMLDTDNode] nativeNSObject) -> object (self)
   inherit native_NSXMLNode (make_NSXMLNode_of_NSXMLDTDNode o) as super
   method initWithXMLString (string : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithXMLString:")[make_pointer_from_object string]) : [`NSObject] Objc.nativeNSObject)
   method setDTDKind (kind : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDTDKind:")[make_int kind]) : unit)
   method l_DTDKind =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "l_DTDKind:")[]) : int)
   method isExternal =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isExternal:")[]) : bool)
   method setPublicID (publicID : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPublicID:")[make_pointer_from_object publicID]) : unit)
   method publicID =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "publicID:")[]) : [`NSString] Objc.nativeNSObject)
   method setSystemID (systemID : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSystemID:")[make_pointer_from_object systemID]) : unit)
   method systemID =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "systemID:")[]) : [`NSString] Objc.nativeNSObject)
   method setNotationName (notationName : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setNotationName:")[make_pointer_from_object notationName]) : unit)
   method notationName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "notationName:")[]) : [`NSString] Objc.nativeNSObject)
end
