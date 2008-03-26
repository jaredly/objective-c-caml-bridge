(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedMutableAttributedString of NSMutableAttributedString *)
class virtual methods_NSMutableAttributedString = object (self)
  method virtual repr : [`NSObject] Objc.id
  method mutableString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mutableString")[])
       : [`NSMutableString] Objc.id))
  method addAttribute_value_range  (name : [`NSString] Objc.t) (value : [`NSObject] Objc.t) (range : NSRange.t) =
    let sel, args = (
      Objc.arg name "addAttribute" make_pointer_from_object
      ++ Objc.arg value "value" make_pointer_from_object
      ++ Objc.arg range "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method addAttributes_range  (attrs : [`NSDictionary] Objc.t) (range : NSRange.t) =
    let sel, args = (
      Objc.arg attrs "addAttributes" make_pointer_from_object
      ++ Objc.arg range "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeAttribute_range  (name : [`NSString] Objc.t) (range : NSRange.t) =
    let sel, args = (
      Objc.arg name "removeAttribute" make_pointer_from_object
      ++ Objc.arg range "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method replaceCharactersInRange_withAttributedString  (range : NSRange.t) (attrString : [`NSAttributedString] Objc.t) =
    let sel, args = (
      Objc.arg range "replaceCharactersInRange" make_range
      ++ Objc.arg attrString "withAttributedString" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method insertAttributedString_atIndex  (attrString : [`NSAttributedString] Objc.t) (loc : int) =
    let sel, args = (
      Objc.arg attrString "insertAttributedString" make_pointer_from_object
      ++ Objc.arg loc "atIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method appendAttributedString (attrString : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "appendAttributedString:")
      [make_pointer_from_object attrString]) : unit)
  method deleteCharactersInRange (range : NSRange.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deleteCharactersInRange:")
      [make_range range]) : unit)
  method setAttributedString (attrString : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributedString:")
      [make_pointer_from_object attrString]) : unit)
  method beginEditing =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "beginEditing")[])
       : unit)
  method endEditing =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "endEditing")[])
       : unit)
end
