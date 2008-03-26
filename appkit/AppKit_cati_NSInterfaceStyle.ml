(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSInterfaceStyle of NSResponder *)
class virtual methods_NSResponder = object (self)
  method virtual repr : [`NSObject] Objc.id
  method interfaceStyle =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "interfaceStyle")[])
       : int)
  method setInterfaceStyle (interfaceStyle : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setInterfaceStyle:")
      [make_int interfaceStyle]) : unit)
end
