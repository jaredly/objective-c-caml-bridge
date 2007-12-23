open Objc
open NSObject


external init : unit -> unit = "caml_init_NSDictionary"
let _ = init()
(* Class object for NSDictionary *)
let class_NSDictionary = object
   val o = Classes.find "NSDictionary"
   method _new = (Objc.objcnew o : [`NSDictionary] nativeNSObject)
(* methods for category NSDictionaryCreation *)
   method dictionary =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dictionary:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method dictionaryWithContentsOfFile (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dictionaryWithContentsOfFile:")[make_pointer_from_object path]) : [`NSDictionary] Objc.nativeNSObject)
   method dictionaryWithContentsOfURL (url : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dictionaryWithContentsOfURL:")[make_pointer_from_object url]) : [`NSDictionary] Objc.nativeNSObject)
   method dictionaryWithObjects  ~forKeys:(keys : [`NSArray] Objc.t ) (objects : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg objects "dictionaryWithObjects" make_pointer_from_object
       ++ Objc.arg keys "forKeys" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSDictionary] Objc.nativeNSObject)
   (* skipping selector dictionaryWithObjects:forKeys:count *)
   method dictionaryWithDictionary (dict : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dictionaryWithDictionary:")[make_pointer_from_object dict]) : [`NSDictionary] Objc.nativeNSObject)
   method dictionaryWithObject  ~forKey:(key : [`NSObject] Objc.t ) (_object : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg _object "dictionaryWithObject" make_pointer_from_object
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSDictionary] Objc.nativeNSObject)
(* methods for category NSExtendedDictionary *)
end
(* Encapsulation for native instance of NSDictionary *)
class native_NSDictionary = fun (o : [`NSDictionary] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSDictionaryCreation *)
   method initWithContentsOfFile (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithContentsOfFile:")[make_pointer_from_object path]) : [`NSObject] Objc.nativeNSObject)
   method initWithContentsOfURL (url : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithContentsOfURL:")[make_pointer_from_object url]) : [`NSObject] Objc.nativeNSObject)
   method initWithObjects  ~forKeys:(keys : [`NSArray] Objc.t ) (objects : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg objects "initWithObjects" make_pointer_from_object
       ++ Objc.arg keys "forKeys" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithObjects:forKeys:count *)
   (* skipping selector initWithDictionary *)
   method initWithDictionary  ?copyItems:(aBool : bool option) (otherDictionary : [`NSDictionary] Objc.t) =
     let sel, args = (
       Objc.arg otherDictionary "initWithDictionary" make_pointer_from_object
       ++ Objc.opt_arg aBool "copyItems" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSExtendedDictionary *)
   method allKeys =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "allKeys:")[]) : [`NSArray] Objc.nativeNSObject)
   method allKeysForObject (anObject : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "allKeysForObject:")[make_pointer_from_object anObject]) : [`NSArray] Objc.nativeNSObject)
   method allValues =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "allValues:")[]) : [`NSArray] Objc.nativeNSObject)
   method description =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "description:")[]) : [`NSString] Objc.nativeNSObject)
   method descriptionInStringsFileFormat =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "descriptionInStringsFileFormat:")[]) : [`NSString] Objc.nativeNSObject)
   (* skipping selector descriptionWithLocale *)
   method descriptionWithLocale  ?indent:(level : int option) (locale : [`NSDictionary] Objc.t) =
     let sel, args = (
       Objc.arg locale "descriptionWithLocale" make_pointer_from_object
       ++ Objc.opt_arg level "indent" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   method isEqualToDictionary (otherDictionary : [`NSDictionary] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEqualToDictionary:")[make_pointer_from_object otherDictionary]) : bool)
   method objectEnumerator =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "objectEnumerator:")[]) : [`NSEnumerator] Objc.nativeNSObject)
   method objectsForKeys  ~notFoundMarker:(marker : [`NSObject] Objc.t ) (keys : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg keys "objectsForKeys" make_pointer_from_object
       ++ Objc.arg marker "notFoundMarker" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSArray] Objc.nativeNSObject)
   method writeToFile  ~atomically:(useAuxiliaryFile : bool ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "writeToFile" make_pointer_from_object
       ++ Objc.arg useAuxiliaryFile "atomically" make_bool
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method writeToURL  ~atomically:(atomically : bool ) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "writeToURL" make_pointer_from_object
       ++ Objc.arg atomically "atomically" make_bool
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method keysSortedByValueUsingSelector (comparator : selector) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "keysSortedByValueUsingSelector:")[make_selector comparator]) : [`NSArray] Objc.nativeNSObject)
   method count =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "count:")[]) : int)
   method keyEnumerator =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "keyEnumerator:")[]) : [`NSEnumerator] Objc.nativeNSObject)
   method objectForKey (aKey : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "objectForKey:")[make_pointer_from_object aKey]) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSMutableDictionary *)
let class_NSMutableDictionary = object
   val o = Classes.find "NSMutableDictionary"
   method _new = (Objc.objcnew o : [`NSMutableDictionary] nativeNSObject)
(* methods for category NSMutableDictionaryCreation *)
   method dictionaryWithCapacity (numItems : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dictionaryWithCapacity:")[make_int numItems]) : [`NSMutableDictionary] Objc.nativeNSObject)
(* methods for category NSExtendedMutableDictionary *)
end
(* Encapsulation for native instance of NSMutableDictionary *)
class native_NSMutableDictionary = fun (o : [`NSMutableDictionary] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSMutableDictionaryCreation *)
   method initWithCapacity (numItems : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithCapacity:")[make_int numItems]) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSExtendedMutableDictionary *)
   method addEntriesFromDictionary (otherDictionary : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addEntriesFromDictionary:")[make_pointer_from_object otherDictionary]) : unit)
   method removeAllObjects =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeAllObjects:")[]) : unit)
   method removeObjectsForKeys (keyArray : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeObjectsForKeys:")[make_pointer_from_object keyArray]) : unit)
   method setDictionary (otherDictionary : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDictionary:")[make_pointer_from_object otherDictionary]) : unit)
   method removeObjectForKey (aKey : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeObjectForKey:")[make_pointer_from_object aKey]) : unit)
   method setObject  ~forKey:(aKey : [`NSObject] Objc.t ) (anObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg anObject "setObject" make_pointer_from_object
       ++ Objc.arg aKey "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
