(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedArray of NSArray *)
class virtual methods_NSArray = object (self)
  method virtual repr : [`NSArray] Objc.id
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
  (* skipping selector descriptionWithLocale *)
  method descriptionWithLocale  ?indent:(level : int option) (locale : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg locale "descriptionWithLocale" make_pointer_from_object
      ++ Objc.opt_arg level "indent" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method firstObjectCommonWithArray (otherArray : [`NSArray] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "firstObjectCommonWithArray:")
      [make_pointer_from_object otherArray]) : [`NSObject] Objc.id)
  (* skipping selector getObjects *)
  method getObjects  ?range:(range : (int * int) option) (objects : [`id] Objc.t) =
    let sel, args = (
      Objc.arg objects "getObjects" make_pointer_from_object
      ++ Objc.opt_arg range "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  (* skipping selector indexOfObject *)
  method indexOfObject  ?inRange:(range : (int * int) option) (anObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg anObject "indexOfObject" make_pointer_from_object
      ++ Objc.opt_arg range "inRange" make_range
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  (* skipping selector indexOfObjectIdenticalTo *)
  method indexOfObjectIdenticalTo  ?inRange:(range : (int * int) option) (anObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg anObject "indexOfObjectIdenticalTo" make_pointer_from_object
      ++ Objc.opt_arg range "inRange" make_range
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
  (* skipping selector sortedArrayUsingFunction:context *)
(*  UNSUPPORTED
  method sortedArrayUsingFunction  ~context:(context : [`void] Objc.t ) ?hint:(hint : [`NSData] Objc.t option) (comparator : (*id->id->pointer to void->int*) unsupported) =
    let sel, args = (
      Objc.arg comparator "sortedArrayUsingFunction" (*id->id->pointer to void->int*) unsupported
      ++ Objc.arg context "context" make_pointer_from_object
      ++ Objc.opt_arg hint "hint" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))

*)
  method sortedArrayUsingSelector (comparator : selector) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "sortedArrayUsingSelector:")
      [make_selector comparator]) : [`NSArray] Objc.id))
  method subarrayWithRange (range : int * int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "subarrayWithRange:")
      [make_range range]) : [`NSArray] Objc.id))
  method writeToFile  ~atomically:(useAuxiliaryFile : bool ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "writeToFile" make_pointer_from_object
      ++ Objc.arg useAuxiliaryFile "atomically" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeToURL  ~atomically:(atomically : bool ) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "writeToURL" make_pointer_from_object
      ++ Objc.arg atomically "atomically" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  (* skipping selector makeObjectsPerformSelector *)
  method makeObjectsPerformSelector  ?withObject:(argument : [`NSObject] Objc.t option) (aSelector : selector) =
    let sel, args = (
      Objc.arg aSelector "makeObjectsPerformSelector" make_selector
      ++ Objc.opt_arg argument "withObject" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method objectsAtIndexes (indexes : [`NSIndexSet] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectsAtIndexes:")
      [make_pointer_from_object indexes]) : [`NSArray] Objc.id))
end
