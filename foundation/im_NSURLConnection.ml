(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURLConnection *)
class virtual methods = object (self)
  method virtual repr : [`NSURLConnection] Objc.id
  method initWithRequest  ~delegate:(delegate : [`NSObject] Objc.t ) (request : [`NSURLRequest] Objc.t) =
    let sel, args = (
      Objc.arg request "initWithRequest" make_pointer_from_object
      ++ Objc.arg delegate "delegate" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method cancel =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "cancel")[])
       : unit)
end
