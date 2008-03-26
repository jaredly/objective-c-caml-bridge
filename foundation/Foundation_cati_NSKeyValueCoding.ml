(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSKeyValueCoding of NSDictionary *)
class virtual methods_NSDictionary = object (self)
  method virtual repr : [`NSObject] Objc.id
  method valueForKey (key : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valueForKey:")
      [make_pointer_from_object key]) : [`NSObject] Objc.id)
end
(* instance methods for category NSKeyValueCoding of NSMutableDictionary *)
class virtual methods_NSMutableDictionary = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setValue_forKey  (value : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "setValue" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
(* instance methods for category NSKeyValueCoding of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method valueForKey (key : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valueForKey:")
      [make_pointer_from_object key]) : [`NSObject] Objc.id)
  method setValue_forKey  (value : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "setValue" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method validateValue_forKey_error  (ioValue : [`id] Objc.t) (inKey : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg ioValue "validateValue" make_pointer_from_object
      ++ Objc.arg inKey "forKey" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method mutableArrayValueForKey (key : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mutableArrayValueForKey:")
      [make_pointer_from_object key]) : [`NSMutableArray] Objc.id))
  method mutableSetValueForKey (key : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mutableSetValueForKey:")
      [make_pointer_from_object key]) : [`NSMutableSet] Objc.id))
  method valueForKeyPath (keyPath : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valueForKeyPath:")
      [make_pointer_from_object keyPath]) : [`NSObject] Objc.id)
  method setValue_forKeyPath  (value : [`NSObject] Objc.t) (keyPath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "setValue" make_pointer_from_object
      ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method validateValue_forKeyPath_error  (ioValue : [`id] Objc.t) (inKeyPath : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg ioValue "validateValue" make_pointer_from_object
      ++ Objc.arg inKeyPath "forKeyPath" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method mutableArrayValueForKeyPath (keyPath : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mutableArrayValueForKeyPath:")
      [make_pointer_from_object keyPath]) : [`NSMutableArray] Objc.id))
  method mutableSetValueForKeyPath (keyPath : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mutableSetValueForKeyPath:")
      [make_pointer_from_object keyPath]) : [`NSMutableSet] Objc.id))
  method valueForUndefinedKey (key : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valueForUndefinedKey:")
      [make_pointer_from_object key]) : [`NSObject] Objc.id)
  method setValue_forUndefinedKey  (value : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "setValue" make_pointer_from_object
      ++ Objc.arg key "forUndefinedKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setNilValueForKey (key : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNilValueForKey:")
      [make_pointer_from_object key]) : unit)
  method dictionaryWithValuesForKeys (keys : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dictionaryWithValuesForKeys:")
      [make_pointer_from_object keys]) : [`NSDictionary] Objc.id))
  method setValuesForKeysWithDictionary (keyedValues : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setValuesForKeysWithDictionary:")
      [make_pointer_from_object keyedValues]) : unit)
end
(* instance methods for category NSKeyValueCoding of NSArray *)
class virtual methods_NSArray = object (self)
  method virtual repr : [`NSObject] Objc.id
  method valueForKey (key : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valueForKey:")
      [make_pointer_from_object key]) : [`NSObject] Objc.id)
  method setValue_forKey  (value : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "setValue" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
(* instance methods for category NSKeyValueCoding of NSSet *)
class virtual methods_NSSet = object (self)
  method virtual repr : [`NSObject] Objc.id
  method valueForKey (key : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valueForKey:")
      [make_pointer_from_object key]) : [`NSObject] Objc.id)
  method setValue_forKey  (value : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "setValue" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
