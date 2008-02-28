(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSIndexPath *)
class virtual methods = object (self)
  method virtual repr : [`NSIndexPath] Objc.id
  method initWithIndex (index : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithIndex:")
      [make_int index]) : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method initWithIndexes  ~length:(length : int ) (indexes : (*pointer to unsigned int*) unsupported) =
    let sel, args = (
      Objc.arg indexes "initWithIndexes" (*pointer to unsigned int*) unsupported
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method indexPathByAddingIndex (index : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "indexPathByAddingIndex:")
      [make_int index]) : [`NSIndexPath] Objc.id))
  method indexPathByRemovingLastIndex =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "indexPathByRemovingLastIndex")[])
       : [`NSIndexPath] Objc.id))
  method indexAtPosition (position : int) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexAtPosition:")
      [make_int position]) : int)
  method length =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "length")[])
       : int)
(*  UNSUPPORTED
  method getIndexes (indexes : (*pointer to unsigned int*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "getIndexes:")
      [(*pointer to unsigned int*) unsupported indexes]) : unit)

*)
  method compare (otherObject : [`NSIndexPath] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "compare:")
      [make_pointer_from_object otherObject]) : int)
end
