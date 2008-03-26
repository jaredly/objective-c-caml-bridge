(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSScriptKeyValueCoding of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method valueAtIndex_inPropertyWithKey  (index : int) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg index "valueAtIndex" make_int
      ++ Objc.arg key "inPropertyWithKey" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method valueWithName_inPropertyWithKey  (name : [`NSString] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "valueWithName" make_pointer_from_object
      ++ Objc.arg key "inPropertyWithKey" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method valueWithUniqueID_inPropertyWithKey  (uniqueID : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg uniqueID "valueWithUniqueID" make_pointer_from_object
      ++ Objc.arg key "inPropertyWithKey" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method replaceValueAtIndex_inPropertyWithKey_withValue  (index : int) (key : [`NSString] Objc.t) (value : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg index "replaceValueAtIndex" make_int
      ++ Objc.arg key "inPropertyWithKey" make_pointer_from_object
      ++ Objc.arg value "withValue" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method insertValue_atIndex_inPropertyWithKey  (value : [`NSObject] Objc.t) (index : int) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "insertValue" make_pointer_from_object
      ++ Objc.arg index "atIndex" make_int
      ++ Objc.arg key "inPropertyWithKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeValueAtIndex_fromPropertyWithKey  (index : int) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg index "removeValueAtIndex" make_int
      ++ Objc.arg key "fromPropertyWithKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method insertValue_inPropertyWithKey  (value : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "insertValue" make_pointer_from_object
      ++ Objc.arg key "inPropertyWithKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method coerceValue_forKey  (value : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "coerceValue" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
