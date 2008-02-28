(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedAttributedString of NSAttributedString *)
class virtual methods_NSAttributedString = object (self)
  method virtual repr : [`NSAttributedString] Objc.id
  method length =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "length")[])
       : int)
  (* skipping selector attribute:atIndex:effectiveRange *)
  method attributedSubstringFromRange (range : int * int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributedSubstringFromRange:")
      [make_range range]) : [`NSAttributedString] Objc.id))
(*  UNSUPPORTED
  method attributesAtIndex  ~longestEffectiveRange:(range : (*NSRangePointer*) unsupported ) ~inRange:(rangeLimit : (int * int) ) (location : int) =
    let sel, args = (
      Objc.arg location "attributesAtIndex" make_int
      ++ Objc.arg range "longestEffectiveRange" (*NSRangePointer*) unsupported
      ++ Objc.arg rangeLimit "inRange" make_range
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDictionary] Objc.id))

*)
(*  UNSUPPORTED
  method attribute  ~atIndex:(location : int ) ~longestEffectiveRange:(range : (*NSRangePointer*) unsupported ) ~inRange:(rangeLimit : (int * int) ) (attrName : [`NSString] Objc.t) =
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
  (* skipping selector initWithString *)
  method initWithString  ?attributes:(attrs : [`NSDictionary] Objc.t option) (str : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg str "initWithString" make_pointer_from_object
      ++ Objc.opt_arg attrs "attributes" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithAttributedString (attrStr : [`NSAttributedString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithAttributedString:")
      [make_pointer_from_object attrStr]) : [`NSObject] Objc.id)
end
