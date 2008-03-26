(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSButtonBezelStyles of NSButton *)
class virtual methods_NSButton = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setBezelStyle (bezelStyle : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBezelStyle:")
      [make_int bezelStyle]) : unit)
  method bezelStyle =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "bezelStyle")[])
       : int)
end
