(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSHTTPCookie *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithProperties (properties : [`NSDictionary] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithProperties:")
      [make_pointer_from_object properties]) : [`NSObject] Objc.id)
  method properties =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "properties")[])
       : [`NSDictionary] Objc.id))
  method version =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "version")[])
       : int)
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method value =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "value")[])
       : [`NSString] Objc.id))
  method expiresDate =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "expiresDate")[])
       : [`NSDate] Objc.id))
  method isSessionOnly =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSessionOnly")[])
       : bool)
  method domain =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "domain")[])
       : [`NSString] Objc.id))
  method path =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "path")[])
       : [`NSString] Objc.id))
  method isSecure =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSecure")[])
       : bool)
  method comment =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "comment")[])
       : [`NSString] Objc.id))
  method commentURL =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "commentURL")[])
       : [`NSURL] Objc.id))
  method portList =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "portList")[])
       : [`NSArray] Objc.id))
end
