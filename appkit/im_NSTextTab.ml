(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextTab *)
class virtual methods = object (self)
  method virtual repr : [`NSTextTab] Objc.id
(*  UNSUPPORTED
  method initWithTextAlignment  ~location:(loc : float ) ~options:(options : [`NSDictionary] Objc.t ) (alignment : (*NSTextAlignment*) unsupported) =
    let sel, args = (
      Objc.arg alignment "initWithTextAlignment" (*NSTextAlignment*) unsupported
      ++ Objc.arg loc "location" make_float
      ++ Objc.arg options "options" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
(*  UNSUPPORTED
  method alignment =
    ((*NSTextAlignment*) unsupported (Objc.invoke (*NSTextAlignment*) Objc.tag_unsupported self#repr (Selector.find "alignment")[])
       : (*NSTextAlignment*) unsupported)

*)
  method options =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "options")[])
       : [`NSDictionary] Objc.id))
  method initWithType  ~location:(loc : float ) (_type : int) =
    let sel, args = (
      Objc.arg _type "initWithType" make_int
      ++ Objc.arg loc "location" make_float
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method location =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "location")[])
       : float)
  method tabStopType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "tabStopType")[])
       : int)
end
