(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMutableArray *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method addObject (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addObject:")
      [make_pointer_from_object anObject]) : unit)
  method insertObject_atIndex  (anObject : [`NSObject] Objc.t) (index : int) =
    let sel, args = (
      Objc.arg anObject "insertObject" make_pointer_from_object
      ++ Objc.arg index "atIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeLastObject =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeLastObject")[])
       : unit)
  method removeObjectAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeObjectAtIndex:")
      [make_int index]) : unit)
  method replaceObjectAtIndex_withObject  (index : int) (anObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg index "replaceObjectAtIndex" make_int
      ++ Objc.arg anObject "withObject" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
