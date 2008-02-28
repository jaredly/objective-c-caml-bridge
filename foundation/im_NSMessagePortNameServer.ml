(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMessagePortNameServer *)
class virtual methods = object (self)
  method virtual repr : [`NSMessagePortNameServer] Objc.id
  (* skipping selector portForName *)
  method portForName  ?host:(host : [`NSString] Objc.t option) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "portForName" make_pointer_from_object
      ++ Objc.opt_arg host "host" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSPort] Objc.id))
end
