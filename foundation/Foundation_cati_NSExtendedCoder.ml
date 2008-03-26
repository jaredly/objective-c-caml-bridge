(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedCoder of NSCoder *)
class virtual methods_NSCoder = object (self)
  method virtual repr : [`NSObject] Objc.id
  method encodeObject (_object : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodeObject:")
      [make_pointer_from_object _object]) : unit)
  method encodePropertyList (aPropertyList : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodePropertyList:")
      [make_pointer_from_object aPropertyList]) : unit)
  method encodeRootObject (rootObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodeRootObject:")
      [make_pointer_from_object rootObject]) : unit)
  method encodeBycopyObject (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodeBycopyObject:")
      [make_pointer_from_object anObject]) : unit)
  method encodeByrefObject (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodeByrefObject:")
      [make_pointer_from_object anObject]) : unit)
  method encodeConditionalObject (_object : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodeConditionalObject:")
      [make_pointer_from_object _object]) : unit)
(*  UNSUPPORTED
  method encodeArrayOfObjCType_count_at  (_type : string) (count : int) (array : (*pointer to const void*) unsupported) =
    let sel, args = (
      Objc.arg _type "encodeArrayOfObjCType" make_string
      ++ Objc.arg count "count" make_int
      ++ Objc.arg array "at" (*pointer to const void*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method encodeBytes_length  (byteaddr : (*pointer to const void*) unsupported) (length : int) =
    let sel, args = (
      Objc.arg byteaddr "encodeBytes" (*pointer to const void*) unsupported
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method decodeObject =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decodeObject")[])
       : [`NSObject] Objc.id)
  method decodePropertyList =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decodePropertyList")[])
       : [`NSObject] Objc.id)
  method decodeArrayOfObjCType_count_at  (itemType : string) (count : int) (array : [`void] Objc.t) =
    let sel, args = (
      Objc.arg itemType "decodeArrayOfObjCType" make_string
      ++ Objc.arg count "count" make_int
      ++ Objc.arg array "at" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method decodeBytesWithReturnedLength (lengthp : (*pointer to unsigned int*) unsupported) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decodeBytesWithReturnedLength:")
      [(*pointer to unsigned int*) unsupported lengthp]) : [`void] Objc.id))

*)
  method setObjectZone (zone : [`NSZone] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setObjectZone:")
      [make_pointer_from_object zone]) : unit)
  method objectZone =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectZone")[])
       : [`NSZone] Objc.id))
  method systemVersion =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "systemVersion")[])
       : int)
  method allowsKeyedCoding =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsKeyedCoding")[])
       : bool)
  method encodeObject_forKey  (objv : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg objv "encodeObject" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeConditionalObject_forKey  (objv : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg objv "encodeConditionalObject" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeBool_forKey  (boolv : bool) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg boolv "encodeBool" make_bool
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeInt_forKey  (intv : int) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg intv "encodeInt" make_int
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeInt32_forKey  (intv : int64) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg intv "encodeInt32" make_int64
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeInt64_forKey  (intv : int64) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg intv "encodeInt64" make_int64
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeFloat_forKey  (realv : float) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg realv "encodeFloat" make_float
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeDouble_forKey  (realv : float) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg realv "encodeDouble" make_float
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method encodeBytes_length_forKey  (bytesp : (*pointer to const uint8_t*) unsupported) (lenv : int) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg bytesp "encodeBytes" (*pointer to const uint8_t*) unsupported
      ++ Objc.arg lenv "length" make_int
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method containsValueForKey (key : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "containsValueForKey:")
      [make_pointer_from_object key]) : bool)
  method decodeObjectForKey (key : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decodeObjectForKey:")
      [make_pointer_from_object key]) : [`NSObject] Objc.id)
  method decodeBoolForKey (key : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "decodeBoolForKey:")
      [make_pointer_from_object key]) : bool)
  method decodeIntForKey (key : [`NSString] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "decodeIntForKey:")
      [make_pointer_from_object key]) : int)
  method decodeInt32ForKey (key : [`NSString] Objc.t) =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "decodeInt32ForKey:")
      [make_pointer_from_object key]) : int64)
  method decodeInt64ForKey (key : [`NSString] Objc.t) =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "decodeInt64ForKey:")
      [make_pointer_from_object key]) : int64)
  method decodeFloatForKey (key : [`NSString] Objc.t) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "decodeFloatForKey:")
      [make_pointer_from_object key]) : float)
  method decodeDoubleForKey (key : [`NSString] Objc.t) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "decodeDoubleForKey:")
      [make_pointer_from_object key]) : float)
(*  UNSUPPORTED
  method decodeBytesForKey_returnedLength  (key : [`NSString] Objc.t) (lengthp : (*pointer to unsigned int*) unsupported) =
    let sel, args = (
      Objc.arg key "decodeBytesForKey" make_pointer_from_object
      ++ Objc.arg lengthp "returnedLength" (*pointer to unsigned int*) unsupported
    ) ([],[]) in
      ((*pointer to const uint8_t*) unsupported (Objc.invoke (*pointer to const uint8_t*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*pointer to const uint8_t*) unsupported)

*)
end
