(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSValue"
let _ = init()
let make_NSObject_of_NSValue (o : [`NSValue] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSValue *)
let class_NSValue = object
   val repr = Classes.find "NSValue"
   method _new = (Objc.objcnew repr : [`NSValue] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSValue] nativeNSObject)
(* methods for category NSValueExtensionMethods *)
   method valueWithNonretainedObject (anObject : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "valueWithNonretainedObject:")[make_pointer_from_object anObject]) : [`NSValue] Objc.nativeNSObject)
(*  UNSUPPORTED
   method valueWithPointer (pointer : (*pointer to const void*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "valueWithPointer:")[(*pointer to const void*) unsupported pointer]) : [`NSValue] Objc.nativeNSObject)

*)
(* methods for category NSValueCreation *)
(*  UNSUPPORTED
   method valueWithBytes  ~objCType:(_type : string ) (value : (*pointer to const void*) unsupported) =
     let sel, args = (
       Objc.arg value "valueWithBytes" (*pointer to const void*) unsupported
       ++ Objc.arg _type "objCType" make_string
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSValue] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method value  ~withObjCType:(_type : string ) (value : (*pointer to const void*) unsupported) =
     let sel, args = (
       Objc.arg value "value" (*pointer to const void*) unsupported
       ++ Objc.arg _type "withObjCType" make_string
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSValue] Objc.nativeNSObject)

*)
end
(* Encapsulation for native instance of NSValue *)
class native_NSValue = fun (o : [`NSValue] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSValue o) as super
(* methods for category NSValueExtensionMethods *)
   method nonretainedObjectValue =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "nonretainedObjectValue:")[]) : [`NSObject] Objc.nativeNSObject)
   method pointerValue =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "pointerValue:")[]) : [`void] Objc.nativeNSObject)
   method isEqualToValue (value : [`NSValue] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEqualToValue:")[make_pointer_from_object value]) : bool)
(* methods for category NSValueCreation *)
(*  UNSUPPORTED
   method initWithBytes  ~objCType:(_type : string ) (value : (*pointer to const void*) unsupported) =
     let sel, args = (
       Objc.arg value "initWithBytes" (*pointer to const void*) unsupported
       ++ Objc.arg _type "objCType" make_string
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method getValue (value : [`void] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "getValue:")[make_pointer_from_object value]) : unit)
   method objCType =
     (get_string (Objc.invoke Objc.tag_string repr (Selector.find "objCType:")[]) : string)
end
let make_NSValue_of_NSNumber (o : [`NSNumber] nativeNSObject) = (Obj.magic o : [`NSValue] nativeNSObject)
(* Class object for NSNumber *)
let class_NSNumber = object
   val repr = Classes.find "NSNumber"
   method _new = (Objc.objcnew repr : [`NSNumber] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSNumber] nativeNSObject)
(* methods for category NSNumberCreation *)
   method numberWithChar (value : char) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "numberWithChar:")[make_char value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithUnsignedChar (value : char) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "numberWithUnsignedChar:")[make_char value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithShort (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "numberWithShort:")[make_int value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithUnsignedShort (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "numberWithUnsignedShort:")[make_int value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithInt (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "numberWithInt:")[make_int value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithUnsignedInt (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "numberWithUnsignedInt:")[make_int value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "numberWithLong:")[make_int64 value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithUnsignedLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "numberWithUnsignedLong:")[make_int64 value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithLongLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "numberWithLongLong:")[make_int64 value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithUnsignedLongLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "numberWithUnsignedLongLong:")[make_int64 value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithFloat (value : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "numberWithFloat:")[make_float value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithDouble (value : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "numberWithDouble:")[make_float value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithBool (value : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "numberWithBool:")[make_bool value]) : [`NSNumber] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSNumber *)
class native_NSNumber = fun (o : [`NSNumber] nativeNSObject) -> object (self)
   inherit native_NSValue (make_NSValue_of_NSNumber o) as super
(* methods for category NSNumberCreation *)
   method initWithChar (value : char) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithChar:")[make_char value]) : [`NSObject] Objc.nativeNSObject)
   method initWithUnsignedChar (value : char) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithUnsignedChar:")[make_char value]) : [`NSObject] Objc.nativeNSObject)
   method initWithShort (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithShort:")[make_int value]) : [`NSObject] Objc.nativeNSObject)
   method initWithUnsignedShort (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithUnsignedShort:")[make_int value]) : [`NSObject] Objc.nativeNSObject)
   method initWithInt (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithInt:")[make_int value]) : [`NSObject] Objc.nativeNSObject)
   method initWithUnsignedInt (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithUnsignedInt:")[make_int value]) : [`NSObject] Objc.nativeNSObject)
   method initWithLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithLong:")[make_int64 value]) : [`NSObject] Objc.nativeNSObject)
   method initWithUnsignedLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithUnsignedLong:")[make_int64 value]) : [`NSObject] Objc.nativeNSObject)
   method initWithLongLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithLongLong:")[make_int64 value]) : [`NSObject] Objc.nativeNSObject)
   method initWithUnsignedLongLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithUnsignedLongLong:")[make_int64 value]) : [`NSObject] Objc.nativeNSObject)
   method initWithFloat (value : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithFloat:")[make_float value]) : [`NSObject] Objc.nativeNSObject)
   method initWithDouble (value : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithDouble:")[make_float value]) : [`NSObject] Objc.nativeNSObject)
   method initWithBool (value : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithBool:")[make_bool value]) : [`NSObject] Objc.nativeNSObject)
   method charValue =
     (get_char (Objc.invoke Objc.tag_char repr (Selector.find "charValue:")[]) : char)
   method unsignedCharValue =
     (get_char (Objc.invoke Objc.tag_char repr (Selector.find "unsignedCharValue:")[]) : char)
   method shortValue =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "shortValue:")[]) : int)
   method unsignedShortValue =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "unsignedShortValue:")[]) : int)
   method intValue =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "intValue:")[]) : int)
   method unsignedIntValue =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "unsignedIntValue:")[]) : int)
   method longValue =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "longValue:")[]) : int64)
   method unsignedLongValue =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "unsignedLongValue:")[]) : int64)
   method longLongValue =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "longLongValue:")[]) : int64)
   method unsignedLongLongValue =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "unsignedLongLongValue:")[]) : int64)
   method floatValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "floatValue:")[]) : float)
   method doubleValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "doubleValue:")[]) : float)
   method boolValue =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "boolValue:")[]) : bool)
   method stringValue =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "stringValue:")[]) : [`NSString] Objc.nativeNSObject)
   method compare (otherNumber : [`NSNumber] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "compare:")[make_pointer_from_object otherNumber]) : int)
   method isEqualToNumber (number : [`NSNumber] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEqualToNumber:")[make_pointer_from_object number]) : bool)
   method descriptionWithLocale (locale : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "descriptionWithLocale:")[make_pointer_from_object locale]) : [`NSString] Objc.nativeNSObject)
end
