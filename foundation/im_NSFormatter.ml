(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSFormatter *)
class virtual methods = object (self)
  method virtual repr : [`NSFormatter] Objc.id
  method stringForObjectValue (obj : [`NSObject] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringForObjectValue:")
      [make_pointer_from_object obj]) : [`NSString] Objc.id))
  method attributedStringForObjectValue  ~withDefaultAttributes:(attrs : [`NSDictionary] Objc.t ) (obj : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg obj "attributedStringForObjectValue" make_pointer_from_object
      ++ Objc.arg attrs "withDefaultAttributes" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSAttributedString] Objc.id))
  method editingStringForObjectValue (obj : [`NSObject] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "editingStringForObjectValue:")
      [make_pointer_from_object obj]) : [`NSString] Objc.id))
(*  UNSUPPORTED
  method getObjectValue  ~forString:(string : [`NSString] Objc.t ) ~errorDescription:(error : (*pointer to pointer to NSString*) unsupported ) (obj : [`id] Objc.t) =
    let sel, args = (
      Objc.arg obj "getObjectValue" make_pointer_from_object
      ++ Objc.arg string "forString" make_pointer_from_object
      ++ Objc.arg error "errorDescription" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

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
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
end
