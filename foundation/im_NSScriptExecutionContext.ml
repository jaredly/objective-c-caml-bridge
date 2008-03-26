(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSScriptExecutionContext *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method topLevelObject =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "topLevelObject")[])
       : [`NSObject] Objc.id)
  method setTopLevelObject (obj : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTopLevelObject:")
      [make_pointer_from_object obj]) : unit)
  method objectBeingTested =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectBeingTested")[])
       : [`NSObject] Objc.id)
  method setObjectBeingTested (obj : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setObjectBeingTested:")
      [make_pointer_from_object obj]) : unit)
  method rangeContainerObject =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "rangeContainerObject")[])
       : [`NSObject] Objc.id)
  method setRangeContainerObject (obj : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRangeContainerObject:")
      [make_pointer_from_object obj]) : unit)
end
