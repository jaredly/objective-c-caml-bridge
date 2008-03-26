(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDeprecatedKeyValueCoding of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method takeValue_forKey  (value : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "takeValue" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method takeValue_forKeyPath  (value : [`NSObject] Objc.t) (keyPath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "takeValue" make_pointer_from_object
      ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method handleQueryWithUnboundKey (key : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "handleQueryWithUnboundKey:")
      [make_pointer_from_object key]) : [`NSObject] Objc.id)
  method handleTakeValue_forUnboundKey  (value : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "handleTakeValue" make_pointer_from_object
      ++ Objc.arg key "forUnboundKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method unableToSetNilForKey (key : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unableToSetNilForKey:")
      [make_pointer_from_object key]) : unit)
  method valuesForKeys (keys : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valuesForKeys:")
      [make_pointer_from_object keys]) : [`NSDictionary] Objc.id))
  method takeValuesFromDictionary (properties : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "takeValuesFromDictionary:")
      [make_pointer_from_object properties]) : unit)
  method storedValueForKey (key : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "storedValueForKey:")
      [make_pointer_from_object key]) : [`NSObject] Objc.id)
  method takeStoredValue_forKey  (value : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "takeStoredValue" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
