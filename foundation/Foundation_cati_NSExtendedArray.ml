(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedArray of NSArray *)
class virtual methods_NSArray = object (self)
  method virtual repr : [`NSObject] Objc.id
  method arrayByAddingObject (anObject : [`NSObject] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "arrayByAddingObject:")
      [make_pointer_from_object anObject]) : [`NSArray] Objc.id))
  method arrayByAddingObjectsFromArray (otherArray : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "arrayByAddingObjectsFromArray:")
      [make_pointer_from_object otherArray]) : [`NSArray] Objc.id))
  method componentsJoinedByString (separator : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "componentsJoinedByString:")
      [make_pointer_from_object separator]) : [`NSString] Objc.id))
  method containsObject (anObject : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "containsObject:")
      [make_pointer_from_object anObject]) : bool)
  method description =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "description")[])
       : [`NSString] Objc.id))
  method descriptionWithLocale (locale : [`NSDictionary] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "descriptionWithLocale:")
      [make_pointer_from_object locale]) : [`NSString] Objc.id))
  method descriptionWithLocale_indent  (locale : [`NSDictionary] Objc.t) (level : int) =
    let sel, args = (
      Objc.arg locale "descriptionWithLocale" make_pointer_from_object
      ++ Objc.arg level "indent" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method firstObjectCommonWithArray (otherArray : [`NSArray] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "firstObjectCommonWithArray:")
      [make_pointer_from_object otherArray]) : [`NSObject] Objc.id)
  method getObjects (objects : [`id] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "getObjects:")
      [make_pointer_from_object objects]) : unit)
  method getObjects_range  (objects : [`id] Objc.t) (range : NSRange.t) =
    let sel, args = (
      Objc.arg objects "getObjects" make_pointer_from_object
      ++ Objc.arg range "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method indexOfObject (anObject : [`NSObject] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfObject:")
      [make_pointer_from_object anObject]) : int)
  method indexOfObject_inRange  (anObject : [`NSObject] Objc.t) (range : NSRange.t) =
    let sel, args = (
      Objc.arg anObject "indexOfObject" make_pointer_from_object
      ++ Objc.arg range "inRange" make_range
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method indexOfObjectIdenticalTo (anObject : [`NSObject] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfObjectIdenticalTo:")
      [make_pointer_from_object anObject]) : int)
  method indexOfObjectIdenticalTo_inRange  (anObject : [`NSObject] Objc.t) (range : NSRange.t) =
    let sel, args = (
      Objc.arg anObject "indexOfObjectIdenticalTo" make_pointer_from_object
      ++ Objc.arg range "inRange" make_range
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method isEqualToArray (otherArray : [`NSArray] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEqualToArray:")
      [make_pointer_from_object otherArray]) : bool)
  method lastObject =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "lastObject")[])
       : [`NSObject] Objc.id)
  method objectEnumerator =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectEnumerator")[])
       : [`NSEnumerator] Objc.id))
  method reverseObjectEnumerator =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "reverseObjectEnumerator")[])
       : [`NSEnumerator] Objc.id))
  method sortedArrayHint =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "sortedArrayHint")[])
       : [`NSData] Objc.id))
(*  UNSUPPORTED
  method sortedArrayUsingFunction_context  (comparator : (*id->id->pointer to void->int*) unsupported) (context : [`void] Objc.t) =
    let sel, args = (
      Objc.arg comparator "sortedArrayUsingFunction" (*id->id->pointer to void->int*) unsupported
      ++ Objc.arg context "context" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))

*)
(*  UNSUPPORTED
  method sortedArrayUsingFunction_context_hint  (comparator : (*id->id->pointer to void->int*) unsupported) (context : [`void] Objc.t) (hint : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg comparator "sortedArrayUsingFunction" (*id->id->pointer to void->int*) unsupported
      ++ Objc.arg context "context" make_pointer_from_object
      ++ Objc.arg hint "hint" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))

*)
  method sortedArrayUsingSelector (comparator : selector) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "sortedArrayUsingSelector:")
      [make_selector comparator]) : [`NSArray] Objc.id))
  method subarrayWithRange (range : NSRange.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "subarrayWithRange:")
      [make_range range]) : [`NSArray] Objc.id))
  method writeToFile_atomically  (path : [`NSString] Objc.t) (useAuxiliaryFile : bool) =
    let sel, args = (
      Objc.arg path "writeToFile" make_pointer_from_object
      ++ Objc.arg useAuxiliaryFile "atomically" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeToURL_atomically  (url : [`NSURL] Objc.t) (atomically : bool) =
    let sel, args = (
      Objc.arg url "writeToURL" make_pointer_from_object
      ++ Objc.arg atomically "atomically" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method makeObjectsPerformSelector (aSelector : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "makeObjectsPerformSelector:")
      [make_selector aSelector]) : unit)
  method makeObjectsPerformSelector_withObject  (aSelector : selector) (argument : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg aSelector "makeObjectsPerformSelector" make_selector
      ++ Objc.arg argument "withObject" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method objectsAtIndexes (indexes : [`NSIndexSet] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectsAtIndexes:")
      [make_pointer_from_object indexes]) : [`NSArray] Objc.id))
end
