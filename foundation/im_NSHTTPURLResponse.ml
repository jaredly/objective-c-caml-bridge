(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSHTTPURLResponse *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method statusCode =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "statusCode")[])
       : int)
  method allHeaderFields =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "allHeaderFields")[])
       : [`NSDictionary] Objc.id))
end
