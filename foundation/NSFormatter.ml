(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSRange


external init : unit -> unit = "caml_init_NSFormatter"
let _ = init()
let make_NSObject_of_NSFormatter (o : [`NSFormatter] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSFormatter *)
let class_NSFormatter = object
   val repr = Classes.find "NSFormatter"
   method _new = (Objc.objcnew repr : [`NSFormatter] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSFormatter] nativeNSObject)
end
(* Encapsulation for native instance of NSFormatter *)
class native_NSFormatter = fun (o : [`NSFormatter] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSFormatter o) as super
   method stringForObjectValue (obj : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "stringForObjectValue:")[make_pointer_from_object obj]) : [`NSString] Objc.nativeNSObject)
   method attributedStringForObjectValue  ~withDefaultAttributes:(attrs : [`NSDictionary] Objc.t ) (obj : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg obj "attributedStringForObjectValue" make_pointer_from_object
       ++ Objc.arg attrs "withDefaultAttributes" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSAttributedString] Objc.nativeNSObject)
   method editingStringForObjectValue (obj : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "editingStringForObjectValue:")[make_pointer_from_object obj]) : [`NSString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method getObjectValue  ~forString:(string : [`NSString] Objc.t ) ~errorDescription:(error : (*pointer to pointer to NSString*) unsupported ) (obj : [`id] Objc.t) =
     let sel, args = (
       Objc.arg obj "getObjectValue" make_pointer_from_object
       ++ Objc.arg string "forString" make_pointer_from_object
       ++ Objc.arg error "errorDescription" (*pointer to pointer to NSString*) unsupported
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)

*)
   (* skipping selector isPartialStringValid:newEditingString:errorDescription *)
(*  UNSUPPORTED
   method isPartialStringValid  ~proposedSelectedRange:(proposedSelRangePtr : (*NSRangePointer*) unsupported ) ~originalString:(origString : [`NSString] Objc.t ) ~originalSelectedRange:(origSelRange : (int * int) ) ~errorDescription:(error : (*pointer to pointer to NSString*) unsupported ) (partialStringPtr : (*pointer to pointer to NSString*) unsupported) =
     let sel, args = (
       Objc.arg partialStringPtr "isPartialStringValid" (*pointer to pointer to NSString*) unsupported
       ++ Objc.arg proposedSelRangePtr "proposedSelectedRange" (*NSRangePointer*) unsupported
       ++ Objc.arg origString "originalString" make_pointer_from_object
       ++ Objc.arg origSelRange "originalSelectedRange" make_range
       ++ Objc.arg error "errorDescription" (*pointer to pointer to NSString*) unsupported
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)

*)
end
