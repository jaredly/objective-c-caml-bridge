(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedAttributedString of NSAttributedString *)
class virtual methods_NSAttributedString = object (self)
  method virtual repr : [`NSObject] Objc.id
  method length =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "length")[])
       : int)
(*  UNSUPPORTED
  method attribute_atIndex_effectiveRange  (attrName : [`NSString] Objc.t) (location : int) (range : (*NSRangePointer*) unsupported) =
    let sel, args = (
      Objc.arg attrName "attribute" make_pointer_from_object
      ++ Objc.arg location "atIndex" make_int
      ++ Objc.arg range "effectiveRange" (*NSRangePointer*) unsupported
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method attributedSubstringFromRange (range : NSRange.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributedSubstringFromRange:")
      [make_range range]) : [`NSAttributedString] Objc.id))
(*  UNSUPPORTED
  method attributesAtIndex_longestEffectiveRange_inRange  (location : int) (range : (*NSRangePointer*) unsupported) (rangeLimit : NSRange.t) =
    let sel, args = (
      Objc.arg location "attributesAtIndex" make_int
      ++ Objc.arg range "longestEffectiveRange" (*NSRangePointer*) unsupported
      ++ Objc.arg rangeLimit "inRange" make_range
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDictionary] Objc.id))

*)
(*  UNSUPPORTED
  method attribute_atIndex_longestEffectiveRange_inRange  (attrName : [`NSString] Objc.t) (location : int) (range : (*NSRangePointer*) unsupported) (rangeLimit : NSRange.t) =
    let sel, args = (
      Objc.arg attrName "attribute" make_pointer_from_object
      ++ Objc.arg location "atIndex" make_int
      ++ Objc.arg range "longestEffectiveRange" (*NSRangePointer*) unsupported
      ++ Objc.arg rangeLimit "inRange" make_range
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method isEqualToAttributedString (other : [`NSAttributedString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEqualToAttributedString:")
      [make_pointer_from_object other]) : bool)
  method initWithString (str : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithString:")
      [make_pointer_from_object str]) : [`NSObject] Objc.id)
  method initWithString_attributes  (str : [`NSString] Objc.t) (attrs : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg str "initWithString" make_pointer_from_object
      ++ Objc.arg attrs "attributes" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithAttributedString (attrStr : [`NSAttributedString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithAttributedString:")
      [make_pointer_from_object attrStr]) : [`NSObject] Objc.id)
end
