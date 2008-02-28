(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSetCommand *)
class virtual methods = object (self)
  method virtual repr : [`NSSetCommand] Objc.id
  method setReceiversSpecifier (receiversRef : [`NSScriptObjectSpecifier] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setReceiversSpecifier:")
      [make_pointer_from_object receiversRef]) : unit)
  method keySpecifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keySpecifier")[])
       : [`NSScriptObjectSpecifier] Objc.id))
end
