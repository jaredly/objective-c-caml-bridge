(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedMutableArray of NSMutableArray *)
class virtual methods_NSMutableArray = object (self)
  method virtual repr : [`NSObject] Objc.id
  method addObjectsFromArray (otherArray : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addObjectsFromArray:")
      [make_pointer_from_object otherArray]) : unit)
  method exchangeObjectAtIndex_withObjectAtIndex  (idx1 : int) (idx2 : int) =
    let sel, args = (
      Objc.arg idx1 "exchangeObjectAtIndex" make_int
      ++ Objc.arg idx2 "withObjectAtIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeAllObjects =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeAllObjects")[])
       : unit)
  method removeObject_inRange  (anObject : [`NSObject] Objc.t) (range : NSRange.t) =
    let sel, args = (
      Objc.arg anObject "removeObject" make_pointer_from_object
      ++ Objc.arg range "inRange" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeObject (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeObject:")
      [make_pointer_from_object anObject]) : unit)
  method removeObjectIdenticalTo_inRange  (anObject : [`NSObject] Objc.t) (range : NSRange.t) =
    let sel, args = (
      Objc.arg anObject "removeObjectIdenticalTo" make_pointer_from_object
      ++ Objc.arg range "inRange" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeObjectIdenticalTo (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeObjectIdenticalTo:")
      [make_pointer_from_object anObject]) : unit)
(*  UNSUPPORTED
  method removeObjectsFromIndices_numIndices  (indices : (*pointer to unsigned int*) unsupported) (count : int) =
    let sel, args = (
      Objc.arg indices "removeObjectsFromIndices" (*pointer to unsigned int*) unsupported
      ++ Objc.arg count "numIndices" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method removeObjectsInArray (otherArray : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeObjectsInArray:")
      [make_pointer_from_object otherArray]) : unit)
  method removeObjectsInRange (range : NSRange.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeObjectsInRange:")
      [make_range range]) : unit)
  method replaceObjectsInRange_withObjectsFromArray_range  (range : NSRange.t) (otherArray : [`NSArray] Objc.t) (otherRange : NSRange.t) =
    let sel, args = (
      Objc.arg range "replaceObjectsInRange" make_range
      ++ Objc.arg otherArray "withObjectsFromArray" make_pointer_from_object
      ++ Objc.arg otherRange "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method replaceObjectsInRange_withObjectsFromArray  (range : NSRange.t) (otherArray : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg range "replaceObjectsInRange" make_range
      ++ Objc.arg otherArray "withObjectsFromArray" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setArray (otherArray : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setArray:")
      [make_pointer_from_object otherArray]) : unit)
(*  UNSUPPORTED
  method sortUsingFunction_context  (compare : (*id->id->pointer to void->int*) unsupported) (context : [`void] Objc.t) =
    let sel, args = (
      Objc.arg compare "sortUsingFunction" (*id->id->pointer to void->int*) unsupported
      ++ Objc.arg context "context" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method sortUsingSelector (comparator : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sortUsingSelector:")
      [make_selector comparator]) : unit)
  method insertObjects_atIndexes  (objects : [`NSArray] Objc.t) (indexes : [`NSIndexSet] Objc.t) =
    let sel, args = (
      Objc.arg objects "insertObjects" make_pointer_from_object
      ++ Objc.arg indexes "atIndexes" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeObjectsAtIndexes (indexes : [`NSIndexSet] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeObjectsAtIndexes:")
      [make_pointer_from_object indexes]) : unit)
  method replaceObjectsAtIndexes_withObjects  (indexes : [`NSIndexSet] Objc.t) (objects : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg indexes "replaceObjectsAtIndexes" make_pointer_from_object
      ++ Objc.arg objects "withObjects" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
