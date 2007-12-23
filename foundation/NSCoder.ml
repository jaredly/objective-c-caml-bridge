open Objc
open NSObject


external init : unit -> unit = "caml_init_NSCoder"
let _ = init()
(* Class object for NSCoder *)
let class_NSCoder = object
   val o = Classes.find "NSCoder"
   method _new = (Objc.objcnew o : [`NSCoder] nativeNSObject)
(* methods for category NSTypedstreamCompatibility *)
(* methods for category NSExtendedCoder *)
end
(* Encapsulation for native instance of NSCoder *)
class native_NSCoder = fun (o : [`NSCoder] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSTypedstreamCompatibility *)
   method encodeNXObject (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "encodeNXObject:")[make_pointer_from_object _object]) : unit)
   method decodeNXObject =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "decodeNXObject:")[]) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSExtendedCoder *)
   (* skipping selector encodeObject *)
   method encodePropertyList (aPropertyList : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "encodePropertyList:")[make_pointer_from_object aPropertyList]) : unit)
   method encodeRootObject (rootObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "encodeRootObject:")[make_pointer_from_object rootObject]) : unit)
   method encodeBycopyObject (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "encodeBycopyObject:")[make_pointer_from_object anObject]) : unit)
   method encodeByrefObject (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "encodeByrefObject:")[make_pointer_from_object anObject]) : unit)
   (* skipping selector encodeConditionalObject *)
(*  UNSUPPORTED
   method encodeArrayOfObjCType  ~count:(count : int ) ~at:(array : (*pointer to const void*) unsupported ) (_type : string) =
     let sel, args = (
       Objc.arg _type "encodeArrayOfObjCType" make_string
       ++ Objc.arg count "count" make_int
       ++ Objc.arg array "at" (*pointer to const void*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   (* skipping selector encodeBytes:length *)
   method decodeObject =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "decodeObject:")[]) : [`NSObject] Objc.nativeNSObject)
   method decodePropertyList =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "decodePropertyList:")[]) : [`NSObject] Objc.nativeNSObject)
   method decodeArrayOfObjCType  ~count:(count : int ) ~at:(array : [`void] Objc.t ) (itemType : string) =
     let sel, args = (
       Objc.arg itemType "decodeArrayOfObjCType" make_string
       ++ Objc.arg count "count" make_int
       ++ Objc.arg array "at" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
(*  UNSUPPORTED
   method decodeBytesWithReturnedLength (lengthp : (*pointer to unsigned int*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "decodeBytesWithReturnedLength:")[(*pointer to unsigned int*) unsupported lengthp]) : [`void] Objc.nativeNSObject)

*)
   method setObjectZone (zone : [`NSZone] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setObjectZone:")[make_pointer_from_object zone]) : unit)
   method objectZone =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "objectZone:")[]) : [`NSZone] Objc.nativeNSObject)
   method systemVersion =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "systemVersion:")[]) : int)
   method allowsKeyedCoding =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "allowsKeyedCoding:")[]) : bool)
   method encodeObject  ?forKey:(key : [`NSString] Objc.t option) (objv : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg objv "encodeObject" make_pointer_from_object
       ++ Objc.opt_arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method encodeConditionalObject  ?forKey:(key : [`NSString] Objc.t option) (objv : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg objv "encodeConditionalObject" make_pointer_from_object
       ++ Objc.opt_arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method encodeBool  ~forKey:(key : [`NSString] Objc.t ) (boolv : bool) =
     let sel, args = (
       Objc.arg boolv "encodeBool" make_bool
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method encodeInt  ~forKey:(key : [`NSString] Objc.t ) (intv : int) =
     let sel, args = (
       Objc.arg intv "encodeInt" make_int
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method encodeInt32  ~forKey:(key : [`NSString] Objc.t ) (intv : int64) =
     let sel, args = (
       Objc.arg intv "encodeInt32" make_int64
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method encodeInt64  ~forKey:(key : [`NSString] Objc.t ) (intv : int64) =
     let sel, args = (
       Objc.arg intv "encodeInt64" make_int64
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method encodeFloat  ~forKey:(key : [`NSString] Objc.t ) (realv : float) =
     let sel, args = (
       Objc.arg realv "encodeFloat" make_float
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method encodeDouble  ~forKey:(key : [`NSString] Objc.t ) (realv : float) =
     let sel, args = (
       Objc.arg realv "encodeDouble" make_float
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
(*  UNSUPPORTED
   method encodeBytes  ~length:(lenv : int ) ~forKey:(key : [`NSString] Objc.t ) (bytesp : (*pointer to const uint8_t*) unsupported) =
     let sel, args = (
       Objc.arg bytesp "encodeBytes" (*pointer to const uint8_t*) unsupported
       ++ Objc.arg lenv "length" make_int
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   method containsValueForKey (key : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "containsValueForKey:")[make_pointer_from_object key]) : bool)
   method decodeObjectForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "decodeObjectForKey:")[make_pointer_from_object key]) : [`NSObject] Objc.nativeNSObject)
   method decodeBoolForKey (key : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "decodeBoolForKey:")[make_pointer_from_object key]) : bool)
   method decodeIntForKey (key : [`NSString] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "decodeIntForKey:")[make_pointer_from_object key]) : int)
   method decodeInt32ForKey (key : [`NSString] Objc.t) =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "decodeInt32ForKey:")[make_pointer_from_object key]) : int64)
   method decodeInt64ForKey (key : [`NSString] Objc.t) =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "decodeInt64ForKey:")[make_pointer_from_object key]) : int64)
   method decodeFloatForKey (key : [`NSString] Objc.t) =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "decodeFloatForKey:")[make_pointer_from_object key]) : float)
   method decodeDoubleForKey (key : [`NSString] Objc.t) =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "decodeDoubleForKey:")[make_pointer_from_object key]) : float)
(*  UNSUPPORTED
   method decodeBytesForKey  ~returnedLength:(lengthp : (*pointer to unsigned int*) unsupported ) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "decodeBytesForKey" make_pointer_from_object
       ++ Objc.arg lengthp "returnedLength" (*pointer to unsigned int*) unsupported
     ) ([],[]) in
       ((*pointer to const uint8_t*) unsupported (Objc.invoke (*pointer to const uint8_t*) Objc.tag_unsupported o (Selector.find_list sel) args) : (*pointer to const uint8_t*) unsupported)

*)
(*  UNSUPPORTED
   method encodeValueOfObjCType  ~at:(addr : (*pointer to const void*) unsupported ) (_type : string) =
     let sel, args = (
       Objc.arg _type "encodeValueOfObjCType" make_string
       ++ Objc.arg addr "at" (*pointer to const void*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   method encodeDataObject (data : [`NSData] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "encodeDataObject:")[make_pointer_from_object data]) : unit)
   method decodeValueOfObjCType  ~at:(data : [`void] Objc.t ) (_type : string) =
     let sel, args = (
       Objc.arg _type "decodeValueOfObjCType" make_string
       ++ Objc.arg data "at" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method decodeDataObject =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "decodeDataObject:")[]) : [`NSData] Objc.nativeNSObject)
   method versionForClassName (className : [`NSString] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "versionForClassName:")[make_pointer_from_object className]) : int)
end
