(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSFormatter *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method stringForObjectValue (obj : [`NSObject] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringForObjectValue:")
      [make_pointer_from_object obj]) : [`NSString] Objc.id))
  method attributedStringForObjectValue_withDefaultAttributes  (obj : [`NSObject] Objc.t) (attrs : [`NSDictionary] Objc.t) =
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
  method getObjectValue_forString_errorDescription  (obj : [`id] Objc.t) (string : [`NSString] Objc.t) (error : (*pointer to pointer to NSString*) unsupported) =
    let sel, args = (
      Objc.arg obj "getObjectValue" make_pointer_from_object
      ++ Objc.arg string "forString" make_pointer_from_object
      ++ Objc.arg error "errorDescription" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
(*  UNSUPPORTED
  method isPartialStringValid_newEditingString_errorDescription  (partialString : [`NSString] Objc.t) (newString : (*pointer to pointer to NSString*) unsupported) (error : (*pointer to pointer to NSString*) unsupported) =
    let sel, args = (
      Objc.arg partialString "isPartialStringValid" make_pointer_from_object
      ++ Objc.arg newString "newEditingString" (*pointer to pointer to NSString*) unsupported
      ++ Objc.arg error "errorDescription" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
(*  UNSUPPORTED
  method isPartialStringValid_proposedSelectedRange_originalString_originalSelectedRange_errorDescription  (partialStringPtr : (*pointer to pointer to NSString*) unsupported) (proposedSelRangePtr : (*NSRangePointer*) unsupported) (origString : [`NSString] Objc.t) (origSelRange : NSRange.t) (error : (*pointer to pointer to NSString*) unsupported) =
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
