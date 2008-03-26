(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSXMLDTDNode *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithXMLString (string : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithXMLString:")
      [make_pointer_from_object string]) : [`NSObject] Objc.id)
  method setDTDKind (kind : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDTDKind:")
      [make_int kind]) : unit)
  method dtdKind =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "DTDKind")[])
       : int)
  method isExternal =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isExternal")[])
       : bool)
  method setPublicID (publicID : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPublicID:")
      [make_pointer_from_object publicID]) : unit)
  method publicID =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "publicID")[])
       : [`NSString] Objc.id))
  method setSystemID (systemID : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSystemID:")
      [make_pointer_from_object systemID]) : unit)
  method systemID =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "systemID")[])
       : [`NSString] Objc.id))
  method setNotationName (notationName : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNotationName:")
      [make_pointer_from_object notationName]) : unit)
  method notationName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "notationName")[])
       : [`NSString] Objc.id))
end
