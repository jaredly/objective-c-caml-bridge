(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextStorage *)
class virtual methods = object (self)
  method virtual repr : [`NSTextStorage] Objc.id
  method addLayoutManager (obj : [`NSLayoutManager] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addLayoutManager:")
      [make_pointer_from_object obj]) : unit)
  method removeLayoutManager (obj : [`NSLayoutManager] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeLayoutManager:")
      [make_pointer_from_object obj]) : unit)
  method layoutManagers =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "layoutManagers")[])
       : [`NSArray] Objc.id))
  method edited  ~range:(range : (int * int) ) ~changeInLength:(delta : int ) (editedMask : int) =
    let sel, args = (
      Objc.arg editedMask "edited" make_int
      ++ Objc.arg range "range" make_range
      ++ Objc.arg delta "changeInLength" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method processEditing =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "processEditing")[])
       : unit)
  method invalidateAttributesInRange (range : int * int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "invalidateAttributesInRange:")
      [make_range range]) : unit)
  method ensureAttributesAreFixedInRange (range : int * int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "ensureAttributesAreFixedInRange:")
      [make_range range]) : unit)
  method fixesAttributesLazily =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "fixesAttributesLazily")[])
       : bool)
  method editedMask =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "editedMask")[])
       : int)
  method editedRange =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "editedRange")[])
       : (int * int))
  method changeInLength =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "changeInLength")[])
       : int)
  method setDelegate (delegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object delegate]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
end
