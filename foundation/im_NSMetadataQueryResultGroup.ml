(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMetadataQueryResultGroup *)
class virtual methods = object (self)
  method virtual repr : [`NSMetadataQueryResultGroup] Objc.id
  method attribute =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attribute")[])
       : [`NSString] Objc.id))
  method value =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "value")[])
       : [`NSObject] Objc.id)
  method subgroups =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "subgroups")[])
       : [`NSArray] Objc.id))
  method resultCount =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "resultCount")[])
       : int)
  method resultAtIndex (idx : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "resultAtIndex:")
      [make_int idx]) : [`NSObject] Objc.id)
  method results =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "results")[])
       : [`NSArray] Objc.id))
end
