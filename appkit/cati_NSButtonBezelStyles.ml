(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSButtonBezelStyles of NSButton *)
class virtual methods_NSButton = object (self)
  method virtual repr : [`NSButton] Objc.id
(*  UNSUPPORTED
  method setBezelStyle (bezelStyle : (*NSBezelStyle*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBezelStyle:")
      [(*NSBezelStyle*) unsupported bezelStyle]) : unit)

*)
(*  UNSUPPORTED
  method bezelStyle =
    ((*NSBezelStyle*) unsupported (Objc.invoke (*NSBezelStyle*) Objc.tag_unsupported self#repr (Selector.find "bezelStyle")[])
       : (*NSBezelStyle*) unsupported)

*)
end
