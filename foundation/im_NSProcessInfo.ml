(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSProcessInfo *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method environment =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "environment")[])
       : [`NSDictionary] Objc.id))
  method arguments =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "arguments")[])
       : [`NSArray] Objc.id))
  method hostName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "hostName")[])
       : [`NSString] Objc.id))
  method processName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "processName")[])
       : [`NSString] Objc.id))
  method processIdentifier =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "processIdentifier")[])
       : int)
  method setProcessName (newName : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setProcessName:")
      [make_pointer_from_object newName]) : unit)
  method globallyUniqueString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "globallyUniqueString")[])
       : [`NSString] Objc.id))
  method operatingSystem =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "operatingSystem")[])
       : int)
  method operatingSystemName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "operatingSystemName")[])
       : [`NSString] Objc.id))
  method operatingSystemVersionString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "operatingSystemVersionString")[])
       : [`NSString] Objc.id))
end
