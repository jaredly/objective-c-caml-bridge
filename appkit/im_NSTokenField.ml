(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTokenField *)
class virtual methods = object (self)
  method virtual repr : [`NSTokenField] Objc.id
(*  UNSUPPORTED
  method setTokenStyle (style : (*NSTokenStyle*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTokenStyle:")
      [(*NSTokenStyle*) unsupported style]) : unit)

*)
(*  UNSUPPORTED
  method tokenStyle =
    ((*NSTokenStyle*) unsupported (Objc.invoke (*NSTokenStyle*) Objc.tag_unsupported self#repr (Selector.find "tokenStyle")[])
       : (*NSTokenStyle*) unsupported)

*)
  method setCompletionDelay (delay : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCompletionDelay:")
      [make_float delay]) : unit)
  method completionDelay =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "completionDelay")[])
       : float)
  method setTokenizingCharacterSet (characterSet : [`NSCharacterSet] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTokenizingCharacterSet:")
      [make_pointer_from_object characterSet]) : unit)
  method tokenizingCharacterSet =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "tokenizingCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
end
