(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSRange


external init : unit -> unit = "caml_init_NSArray"
let _ = init()
let make_NSObject_of_NSArray (o : [`NSArray] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSArray *)
let class_NSArray = object
   val repr = Classes.find "NSArray"
   method _new = (Objc.objcnew repr : [`NSArray] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSArray] nativeNSObject)
(* methods for category NSArrayCreation *)
   method array =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "array:")[]) : [`NSArray] Objc.nativeNSObject)
   method arrayWithContentsOfFile (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "arrayWithContentsOfFile:")[make_pointer_from_object path]) : [`NSArray] Objc.nativeNSObject)
   method arrayWithContentsOfURL (url : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "arrayWithContentsOfURL:")[make_pointer_from_object url]) : [`NSArray] Objc.nativeNSObject)
   method arrayWithObject (anObject : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "arrayWithObject:")[make_pointer_from_object anObject]) : [`NSArray] Objc.nativeNSObject)
   method arrayWithArray (array : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "arrayWithArray:")[make_pointer_from_object array]) : [`NSArray] Objc.nativeNSObject)
   method arrayWithObjects  ~count:(cnt : int ) (objs : [`id] Objc.t) =
     let sel, args = (
       Objc.arg objs "arrayWithObjects" make_pointer_from_object
       ++ Objc.arg cnt "count" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSArray] Objc.nativeNSObject)
(* methods for category NSExtendedArray *)
end
(* Encapsulation for native instance of NSArray *)
class native_NSArray = fun (o : [`NSArray] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSArray o) as super
(* methods for category NSArrayCreation *)
   (* skipping selector initWithArray *)
   method initWithArray  ?copyItems:(flag : bool option) (array : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg array "initWithArray" make_pointer_from_object
       ++ Objc.opt_arg flag "copyItems" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithContentsOfFile (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithContentsOfFile:")[make_pointer_from_object path]) : [`NSObject] Objc.nativeNSObject)
   method initWithContentsOfURL (url : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithContentsOfURL:")[make_pointer_from_object url]) : [`NSObject] Objc.nativeNSObject)
   method initWithObjects  ~count:(count : int ) (objects : [`id] Objc.t) =
     let sel, args = (
       Objc.arg objects "initWithObjects" make_pointer_from_object
       ++ Objc.arg count "count" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSExtendedArray *)
   method arrayByAddingObject (anObject : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "arrayByAddingObject:")[make_pointer_from_object anObject]) : [`NSArray] Objc.nativeNSObject)
   method arrayByAddingObjectsFromArray (otherArray : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "arrayByAddingObjectsFromArray:")[make_pointer_from_object otherArray]) : [`NSArray] Objc.nativeNSObject)
   method componentsJoinedByString (separator : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "componentsJoinedByString:")[make_pointer_from_object separator]) : [`NSString] Objc.nativeNSObject)
   method containsObject (anObject : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "containsObject:")[make_pointer_from_object anObject]) : bool)
   method description =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "description:")[]) : [`NSString] Objc.nativeNSObject)
   (* skipping selector descriptionWithLocale *)
   method descriptionWithLocale  ?indent:(level : int option) (locale : [`NSDictionary] Objc.t) =
     let sel, args = (
       Objc.arg locale "descriptionWithLocale" make_pointer_from_object
       ++ Objc.opt_arg level "indent" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   method firstObjectCommonWithArray (otherArray : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "firstObjectCommonWithArray:")[make_pointer_from_object otherArray]) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector getObjects *)
   method getObjects  ?range:(range : (int * int) option) (objects : [`id] Objc.t) =
     let sel, args = (
       Objc.arg objects "getObjects" make_pointer_from_object
       ++ Objc.opt_arg range "range" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector indexOfObject *)
   method indexOfObject  ?inRange:(range : (int * int) option) (anObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg anObject "indexOfObject" make_pointer_from_object
       ++ Objc.opt_arg range "inRange" make_range
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
   (* skipping selector indexOfObjectIdenticalTo *)
   method indexOfObjectIdenticalTo  ?inRange:(range : (int * int) option) (anObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg anObject "indexOfObjectIdenticalTo" make_pointer_from_object
       ++ Objc.opt_arg range "inRange" make_range
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
   method isEqualToArray (otherArray : [`NSArray] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEqualToArray:")[make_pointer_from_object otherArray]) : bool)
   method lastObject =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "lastObject:")[]) : [`NSObject] Objc.nativeNSObject)
   method objectEnumerator =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "objectEnumerator:")[]) : [`NSEnumerator] Objc.nativeNSObject)
   method reverseObjectEnumerator =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "reverseObjectEnumerator:")[]) : [`NSEnumerator] Objc.nativeNSObject)
   method sortedArrayHint =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sortedArrayHint:")[]) : [`NSData] Objc.nativeNSObject)
   (* skipping selector sortedArrayUsingFunction:context *)
(*  UNSUPPORTED
   method sortedArrayUsingFunction  ~context:(context : [`void] Objc.t ) ?hint:(hint : [`NSData] Objc.t option) (comparator : (*id->id->pointer to void->int*) unsupported) =
     let sel, args = (
       Objc.arg comparator "sortedArrayUsingFunction" (*id->id->pointer to void->int*) unsupported
       ++ Objc.arg context "context" make_pointer_from_object
       ++ Objc.opt_arg hint "hint" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSArray] Objc.nativeNSObject)

*)
   method sortedArrayUsingSelector (comparator : selector) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sortedArrayUsingSelector:")[make_selector comparator]) : [`NSArray] Objc.nativeNSObject)
   method subarrayWithRange (range : int * int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "subarrayWithRange:")[make_range range]) : [`NSArray] Objc.nativeNSObject)
   method writeToFile  ~atomically:(useAuxiliaryFile : bool ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "writeToFile" make_pointer_from_object
       ++ Objc.arg useAuxiliaryFile "atomically" make_bool
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method writeToURL  ~atomically:(atomically : bool ) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "writeToURL" make_pointer_from_object
       ++ Objc.arg atomically "atomically" make_bool
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   (* skipping selector makeObjectsPerformSelector *)
   method makeObjectsPerformSelector  ?withObject:(argument : [`NSObject] Objc.t option) (aSelector : selector) =
     let sel, args = (
       Objc.arg aSelector "makeObjectsPerformSelector" make_selector
       ++ Objc.opt_arg argument "withObject" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method objectsAtIndexes (indexes : [`NSIndexSet] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "objectsAtIndexes:")[make_pointer_from_object indexes]) : [`NSArray] Objc.nativeNSObject)
   method count =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "count:")[]) : int)
   method objectAtIndex (index : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "objectAtIndex:")[make_int index]) : [`NSObject] Objc.nativeNSObject)
end
let make_NSArray_of_NSMutableArray (o : [`NSMutableArray] nativeNSObject) = (Obj.magic o : [`NSArray] nativeNSObject)
(* Class object for NSMutableArray *)
let class_NSMutableArray = object
   val repr = Classes.find "NSMutableArray"
   method _new = (Objc.objcnew repr : [`NSMutableArray] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMutableArray] nativeNSObject)
(* methods for category NSMutableArrayCreation *)
   method arrayWithCapacity (numItems : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "arrayWithCapacity:")[make_int numItems]) : [`NSMutableArray] Objc.nativeNSObject)
(* methods for category NSExtendedMutableArray *)
end
(* Encapsulation for native instance of NSMutableArray *)
class native_NSMutableArray = fun (o : [`NSMutableArray] nativeNSObject) -> object (self)
   inherit native_NSArray (make_NSArray_of_NSMutableArray o) as super
(* methods for category NSMutableArrayCreation *)
   method initWithCapacity (numItems : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithCapacity:")[make_int numItems]) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSExtendedMutableArray *)
   method addObjectsFromArray (otherArray : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addObjectsFromArray:")[make_pointer_from_object otherArray]) : unit)
   method exchangeObjectAtIndex  ~withObjectAtIndex:(idx2 : int ) (idx1 : int) =
     let sel, args = (
       Objc.arg idx1 "exchangeObjectAtIndex" make_int
       ++ Objc.arg idx2 "withObjectAtIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method removeAllObjects =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeAllObjects:")[]) : unit)
   method removeObject  ?inRange:(range : (int * int) option) (anObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg anObject "removeObject" make_pointer_from_object
       ++ Objc.opt_arg range "inRange" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector removeObject *)
   method removeObjectIdenticalTo  ?inRange:(range : (int * int) option) (anObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg anObject "removeObjectIdenticalTo" make_pointer_from_object
       ++ Objc.opt_arg range "inRange" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector removeObjectIdenticalTo *)
(*  UNSUPPORTED
   method removeObjectsFromIndices  ~numIndices:(count : int ) (indices : (*pointer to unsigned int*) unsupported) =
     let sel, args = (
       Objc.arg indices "removeObjectsFromIndices" (*pointer to unsigned int*) unsupported
       ++ Objc.arg count "numIndices" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method removeObjectsInArray (otherArray : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeObjectsInArray:")[make_pointer_from_object otherArray]) : unit)
   method removeObjectsInRange (range : int * int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeObjectsInRange:")[make_range range]) : unit)
   method replaceObjectsInRange  ~withObjectsFromArray:(otherArray : [`NSArray] Objc.t ) ?range:(otherRange : (int * int) option) (range : int * int) =
     let sel, args = (
       Objc.arg range "replaceObjectsInRange" make_range
       ++ Objc.arg otherArray "withObjectsFromArray" make_pointer_from_object
       ++ Objc.opt_arg otherRange "range" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector replaceObjectsInRange:withObjectsFromArray *)
   method setArray (otherArray : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setArray:")[make_pointer_from_object otherArray]) : unit)
(*  UNSUPPORTED
   method sortUsingFunction  ~context:(context : [`void] Objc.t ) (compare : (*id->id->pointer to void->int*) unsupported) =
     let sel, args = (
       Objc.arg compare "sortUsingFunction" (*id->id->pointer to void->int*) unsupported
       ++ Objc.arg context "context" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method sortUsingSelector (comparator : selector) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "sortUsingSelector:")[make_selector comparator]) : unit)
   method insertObjects  ~atIndexes:(indexes : [`NSIndexSet] Objc.t ) (objects : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg objects "insertObjects" make_pointer_from_object
       ++ Objc.arg indexes "atIndexes" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method removeObjectsAtIndexes (indexes : [`NSIndexSet] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeObjectsAtIndexes:")[make_pointer_from_object indexes]) : unit)
   method replaceObjectsAtIndexes  ~withObjects:(objects : [`NSArray] Objc.t ) (indexes : [`NSIndexSet] Objc.t) =
     let sel, args = (
       Objc.arg indexes "replaceObjectsAtIndexes" make_pointer_from_object
       ++ Objc.arg objects "withObjects" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method addObject (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addObject:")[make_pointer_from_object anObject]) : unit)
   method insertObject  ~atIndex:(index : int ) (anObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg anObject "insertObject" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method removeLastObject =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeLastObject:")[]) : unit)
   method removeObjectAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeObjectAtIndex:")[make_int index]) : unit)
   method replaceObjectAtIndex  ~withObject:(anObject : [`NSObject] Objc.t ) (index : int) =
     let sel, args = (
       Objc.arg index "replaceObjectAtIndex" make_int
       ++ Objc.arg anObject "withObject" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
