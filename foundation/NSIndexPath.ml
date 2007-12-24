(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSIndexPath"
let _ = init()
let make_NSObject_of_NSIndexPath (o : [`NSIndexPath] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSIndexPath *)
let class_NSIndexPath = object
   val repr = Classes.find "NSIndexPath"
   method _new = (Objc.objcnew repr : [`NSIndexPath] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSIndexPath] nativeNSObject)
   method indexPathWithIndex (index : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "indexPathWithIndex:")[make_int index]) : [`NSIndexPath] Objc.nativeNSObject)
(*  UNSUPPORTED
   method indexPathWithIndexes  ~length:(length : int ) (indexes : (*pointer to unsigned int*) unsupported) =
     let sel, args = (
       Objc.arg indexes "indexPathWithIndexes" (*pointer to unsigned int*) unsupported
       ++ Objc.arg length "length" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSIndexPath] Objc.nativeNSObject)

*)
end
(* Encapsulation for native instance of NSIndexPath *)
class native_NSIndexPath = fun (o : [`NSIndexPath] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSIndexPath o) as super
   method initWithIndex (index : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithIndex:")[make_int index]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method initWithIndexes  ~length:(length : int ) (indexes : (*pointer to unsigned int*) unsupported) =
     let sel, args = (
       Objc.arg indexes "initWithIndexes" (*pointer to unsigned int*) unsupported
       ++ Objc.arg length "length" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method indexPathByAddingIndex (index : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "indexPathByAddingIndex:")[make_int index]) : [`NSIndexPath] Objc.nativeNSObject)
   method indexPathByRemovingLastIndex =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "indexPathByRemovingLastIndex:")[]) : [`NSIndexPath] Objc.nativeNSObject)
   method indexAtPosition (position : int) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "indexAtPosition:")[make_int position]) : int)
   method length =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "length:")[]) : int)
(*  UNSUPPORTED
   method getIndexes (indexes : (*pointer to unsigned int*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "getIndexes:")[(*pointer to unsigned int*) unsupported indexes]) : unit)

*)
   method compare (otherObject : [`NSIndexPath] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "compare:")[make_pointer_from_object otherObject]) : int)
end
