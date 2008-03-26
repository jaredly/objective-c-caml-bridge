(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSCellMixedState of NSCell *)
class virtual methods_NSCell = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setAllowsMixedState (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsMixedState:")
      [make_bool flag]) : unit)
  method allowsMixedState =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsMixedState")[])
       : bool)
  method nextState =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "nextState")[])
       : int)
  method setNextState =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNextState")[])
       : unit)
end
