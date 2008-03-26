(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSQuitCommand *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method saveOptions =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "saveOptions")[])
       : int)
end
