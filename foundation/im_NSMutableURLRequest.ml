(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMutableURLRequest *)
class virtual methods = object (self)
  method virtual repr : [`NSMutableURLRequest] Objc.id
  method setURL (_URL : [`NSURL] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setURL:")
      [make_pointer_from_object _URL]) : unit)
  method setCachePolicy (policy : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCachePolicy:")
      [make_int policy]) : unit)
  method setTimeoutInterval (seconds : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTimeoutInterval:")
      [make_float seconds]) : unit)
  method setMainDocumentURL (_URL : [`NSURL] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMainDocumentURL:")
      [make_pointer_from_object _URL]) : unit)
end
