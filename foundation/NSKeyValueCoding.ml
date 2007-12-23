open Objc
open NSArray
open NSDictionary
open NSSet


external init : unit -> unit = "caml_init_NSKeyValueCoding"
let _ = init()
(* Class object for NSDictionary *)
let class_NSDictionary = object
   val o = Classes.find "NSDictionary"
   method _new = (Objc.objcnew o : [`NSDictionary] nativeNSObject)
(* methods for category NSKeyValueCoding *)
end
(* Encapsulation for native instance of NSDictionary *)
class native_NSDictionary = fun (o : [`NSDictionary] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSKeyValueCoding *)
   method valueForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueForKey:")[make_pointer_from_object key]) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSMutableDictionary *)
let class_NSMutableDictionary = object
   val o = Classes.find "NSMutableDictionary"
   method _new = (Objc.objcnew o : [`NSMutableDictionary] nativeNSObject)
(* methods for category NSKeyValueCoding *)
end
(* Encapsulation for native instance of NSMutableDictionary *)
class native_NSMutableDictionary = fun (o : [`NSMutableDictionary] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSKeyValueCoding *)
   method setValue  ~forKey:(key : [`NSString] Objc.t ) (value : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg value "setValue" make_pointer_from_object
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSDeprecatedKeyValueCoding *)
   method useStoredAccessor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "useStoredAccessor:")[]) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSKeyValueCoding *)
   method accessInstanceVariablesDirectly =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "accessInstanceVariablesDirectly:")[]) : [`NSObject] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSDeprecatedKeyValueCoding *)
   method takeValue  ~forKey:(key : [`NSString] Objc.t ) (value : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg value "takeValue" make_pointer_from_object
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   (* skipping selector takeValue:forKeyPath *)
   method handleQueryWithUnboundKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "handleQueryWithUnboundKey:")[make_pointer_from_object key]) : [`NSObject] Objc.nativeNSObject)
   method handleTakeValue  ~forUnboundKey:(key : [`NSString] Objc.t ) (value : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg value "handleTakeValue" make_pointer_from_object
       ++ Objc.arg key "forUnboundKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method unableToSetNilForKey (key : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "unableToSetNilForKey:")[make_pointer_from_object key]) : unit)
   method valuesForKeys (keys : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valuesForKeys:")[make_pointer_from_object keys]) : [`NSDictionary] Objc.nativeNSObject)
   method takeValuesFromDictionary (properties : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "takeValuesFromDictionary:")[make_pointer_from_object properties]) : unit)
   method storedValueForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "storedValueForKey:")[make_pointer_from_object key]) : [`NSObject] Objc.nativeNSObject)
   method takeStoredValue  ~forKey:(key : [`NSString] Objc.t ) (value : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg value "takeStoredValue" make_pointer_from_object
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
(* methods for category NSKeyValueCoding *)
   method valueForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueForKey:")[make_pointer_from_object key]) : [`NSObject] Objc.nativeNSObject)
   method setValue  ?forKey:(key : [`NSString] Objc.t option) (value : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg value "setValue" make_pointer_from_object
       ++ Objc.opt_arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method validateValue  ~forKey:(inKey : [`NSString] Objc.t ) ~error:(outError : bool ) (ioValue : [`id] Objc.t) =
     let sel, args = (
       Objc.arg ioValue "validateValue" make_pointer_from_object
       ++ Objc.arg inKey "forKey" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method mutableArrayValueForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "mutableArrayValueForKey:")[make_pointer_from_object key]) : [`NSMutableArray] Objc.nativeNSObject)
   method mutableSetValueForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "mutableSetValueForKey:")[make_pointer_from_object key]) : [`NSMutableSet] Objc.nativeNSObject)
   method valueForKeyPath (keyPath : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueForKeyPath:")[make_pointer_from_object keyPath]) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector setValue:forKeyPath *)
   (* skipping selector validateValue:forKeyPath:error *)
   method mutableArrayValueForKeyPath (keyPath : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "mutableArrayValueForKeyPath:")[make_pointer_from_object keyPath]) : [`NSMutableArray] Objc.nativeNSObject)
   method mutableSetValueForKeyPath (keyPath : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "mutableSetValueForKeyPath:")[make_pointer_from_object keyPath]) : [`NSMutableSet] Objc.nativeNSObject)
   method valueForUndefinedKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueForUndefinedKey:")[make_pointer_from_object key]) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector setValue:forUndefinedKey *)
   method setNilValueForKey (key : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNilValueForKey:")[make_pointer_from_object key]) : unit)
   method dictionaryWithValuesForKeys (keys : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dictionaryWithValuesForKeys:")[make_pointer_from_object keys]) : [`NSDictionary] Objc.nativeNSObject)
   method setValuesForKeysWithDictionary (keyedValues : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setValuesForKeysWithDictionary:")[make_pointer_from_object keyedValues]) : unit)
end
(* Class object for NSArray *)
let class_NSArray = object
   val o = Classes.find "NSArray"
   method _new = (Objc.objcnew o : [`NSArray] nativeNSObject)
(* methods for category NSKeyValueCoding *)
end
(* Encapsulation for native instance of NSArray *)
class native_NSArray = fun (o : [`NSArray] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSKeyValueCoding *)
   method valueForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueForKey:")[make_pointer_from_object key]) : [`NSObject] Objc.nativeNSObject)
   method setValue  ~forKey:(key : [`NSString] Objc.t ) (value : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg value "setValue" make_pointer_from_object
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
(* Class object for NSSet *)
let class_NSSet = object
   val o = Classes.find "NSSet"
   method _new = (Objc.objcnew o : [`NSSet] nativeNSObject)
(* methods for category NSKeyValueCoding *)
end
(* Encapsulation for native instance of NSSet *)
class native_NSSet = fun (o : [`NSSet] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSKeyValueCoding *)
   method valueForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueForKey:")[make_pointer_from_object key]) : [`NSObject] Objc.nativeNSObject)
   method setValue  ~forKey:(key : [`NSString] Objc.t ) (value : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg value "setValue" make_pointer_from_object
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
