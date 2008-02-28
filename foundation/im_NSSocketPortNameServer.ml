(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSocketPortNameServer *)
class virtual methods = object (self)
  method virtual repr : [`NSSocketPortNameServer] Objc.id
  (* skipping selector portForName *)
  (* skipping selector portForName:host *)
  (* skipping selector registerPort:name *)
  method removePortForName (name : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "removePortForName:")
      [make_pointer_from_object name]) : bool)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method portForName  ?host:(host : [`NSString] Objc.t option) ?nameServerPortNumber:(portNumber : int option) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "portForName" make_pointer_from_object
      ++ Objc.opt_arg host "host" make_pointer_from_object
      ++ Objc.opt_arg portNumber "nameServerPortNumber" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSPort] Objc.id))

*)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method registerPort  ~name:(name : [`NSString] Objc.t ) ?nameServerPortNumber:(portNumber : int option) (port : [`NSPort] Objc.t) =
    let sel, args = (
      Objc.arg port "registerPort" make_pointer_from_object
      ++ Objc.arg name "name" make_pointer_from_object
      ++ Objc.opt_arg portNumber "nameServerPortNumber" make_int
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
  method setDefaultNameServerPortNumber (portNumber : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDefaultNameServerPortNumber:")
      [make_int portNumber]) : unit)
  method defaultNameServerPortNumber =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "defaultNameServerPortNumber")[])
       : int)
end
