(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSScriptWhoseTest *)
class virtual methods = object (self)
  method virtual repr : [`NSScriptWhoseTest] Objc.id
  method isTrue =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isTrue")[])
       : bool)
end
