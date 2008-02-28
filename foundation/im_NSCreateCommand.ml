(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCreateCommand *)
class virtual methods = object (self)
  method virtual repr : [`NSCreateCommand] Objc.id
  method createClassDescription =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "createClassDescription")[])
       : [`NSScriptClassDescription] Objc.id))
  method resolvedKeyDictionary =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "resolvedKeyDictionary")[])
       : [`NSDictionary] Objc.id))
end
