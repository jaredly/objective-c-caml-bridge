(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSScriptKeyValueCoding"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSScriptKeyValueCoding *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSScriptKeyValueCoding *)
   method valueAtIndex  ~inPropertyWithKey:(key : [`NSString] Objc.t ) (index : int) =
     let sel, args = (
       Objc.arg index "valueAtIndex" make_int
       ++ Objc.arg key "inPropertyWithKey" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method valueWithName  ~inPropertyWithKey:(key : [`NSString] Objc.t ) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "valueWithName" make_pointer_from_object
       ++ Objc.arg key "inPropertyWithKey" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method valueWithUniqueID  ~inPropertyWithKey:(key : [`NSString] Objc.t ) (uniqueID : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg uniqueID "valueWithUniqueID" make_pointer_from_object
       ++ Objc.arg key "inPropertyWithKey" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method replaceValueAtIndex  ~inPropertyWithKey:(key : [`NSString] Objc.t ) ~withValue:(value : [`NSObject] Objc.t ) (index : int) =
     let sel, args = (
       Objc.arg index "replaceValueAtIndex" make_int
       ++ Objc.arg key "inPropertyWithKey" make_pointer_from_object
       ++ Objc.arg value "withValue" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method insertValue  ~atIndex:(index : int ) ~inPropertyWithKey:(key : [`NSString] Objc.t ) (value : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg value "insertValue" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int
       ++ Objc.arg key "inPropertyWithKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method removeValueAtIndex  ~fromPropertyWithKey:(key : [`NSString] Objc.t ) (index : int) =
     let sel, args = (
       Objc.arg index "removeValueAtIndex" make_int
       ++ Objc.arg key "fromPropertyWithKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector insertValue:inPropertyWithKey *)
   method coerceValue  ~forKey:(key : [`NSString] Objc.t ) (value : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg value "coerceValue" make_pointer_from_object
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
end
