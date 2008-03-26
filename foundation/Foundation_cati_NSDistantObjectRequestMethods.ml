(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDistantObjectRequestMethods of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method connection_handleRequest  (connection : [`NSConnection] Objc.t) (doreq : [`NSDistantObjectRequest] Objc.t) =
    let sel, args = (
      Objc.arg connection "connection" make_pointer_from_object
      ++ Objc.arg doreq "handleRequest" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
end
