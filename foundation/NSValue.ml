open Objc
open NSObject


external init : unit -> unit = "caml_init_NSValue"
let _ = init()
(* Class object for NSNumber *)
let class_NSNumber = object
   val o = Classes.find "NSNumber"
   method _new = (Objc.objcnew o : [`NSNumber] nativeNSObject)
(* methods for category NSNumberCreation *)
   method numberWithChar (value : char) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberWithChar:")[make_char value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithUnsignedChar (value : char) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberWithUnsignedChar:")[make_char value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithShort (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberWithShort:")[make_int value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithUnsignedShort (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberWithUnsignedShort:")[make_int value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithInt (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberWithInt:")[make_int value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithUnsignedInt (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberWithUnsignedInt:")[make_int value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberWithLong:")[make_int64 value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithUnsignedLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberWithUnsignedLong:")[make_int64 value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithLongLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberWithLongLong:")[make_int64 value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithUnsignedLongLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberWithUnsignedLongLong:")[make_int64 value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithFloat (value : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberWithFloat:")[make_float value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithDouble (value : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberWithDouble:")[make_float value]) : [`NSNumber] Objc.nativeNSObject)
   method numberWithBool (value : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberWithBool:")[make_bool value]) : [`NSNumber] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSNumber *)
class native_NSNumber = fun (o : [`NSNumber] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSNumberCreation *)
   method initWithChar (value : char) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithChar:")[make_char value]) : [`NSObject] Objc.nativeNSObject)
   method initWithUnsignedChar (value : char) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithUnsignedChar:")[make_char value]) : [`NSObject] Objc.nativeNSObject)
   method initWithShort (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithShort:")[make_int value]) : [`NSObject] Objc.nativeNSObject)
   method initWithUnsignedShort (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithUnsignedShort:")[make_int value]) : [`NSObject] Objc.nativeNSObject)
   method initWithInt (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithInt:")[make_int value]) : [`NSObject] Objc.nativeNSObject)
   method initWithUnsignedInt (value : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithUnsignedInt:")[make_int value]) : [`NSObject] Objc.nativeNSObject)
   method initWithLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithLong:")[make_int64 value]) : [`NSObject] Objc.nativeNSObject)
   method initWithUnsignedLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithUnsignedLong:")[make_int64 value]) : [`NSObject] Objc.nativeNSObject)
   method initWithLongLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithLongLong:")[make_int64 value]) : [`NSObject] Objc.nativeNSObject)
   method initWithUnsignedLongLong (value : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithUnsignedLongLong:")[make_int64 value]) : [`NSObject] Objc.nativeNSObject)
   method initWithFloat (value : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithFloat:")[make_float value]) : [`NSObject] Objc.nativeNSObject)
   method initWithDouble (value : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithDouble:")[make_float value]) : [`NSObject] Objc.nativeNSObject)
   method initWithBool (value : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithBool:")[make_bool value]) : [`NSObject] Objc.nativeNSObject)
   method charValue =
     (get_char (Objc.invoke Objc.tag_char o (Selector.find "charValue:")[]) : char)
   method unsignedCharValue =
     (get_char (Objc.invoke Objc.tag_char o (Selector.find "unsignedCharValue:")[]) : char)
   method shortValue =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "shortValue:")[]) : int)
   method unsignedShortValue =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "unsignedShortValue:")[]) : int)
   method intValue =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "intValue:")[]) : int)
   method unsignedIntValue =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "unsignedIntValue:")[]) : int)
   method longValue =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "longValue:")[]) : int64)
   method unsignedLongValue =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "unsignedLongValue:")[]) : int64)
   method longLongValue =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "longLongValue:")[]) : int64)
   method unsignedLongLongValue =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "unsignedLongLongValue:")[]) : int64)
   method floatValue =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "floatValue:")[]) : float)
   method doubleValue =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "doubleValue:")[]) : float)
   method boolValue =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "boolValue:")[]) : bool)
   method stringValue =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringValue:")[]) : [`NSString] Objc.nativeNSObject)
   method compare (otherNumber : [`NSNumber] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "compare:")[make_pointer_from_object otherNumber]) : int)
   method isEqualToNumber (number : [`NSNumber] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEqualToNumber:")[make_pointer_from_object number]) : bool)
   method descriptionWithLocale (locale : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "descriptionWithLocale:")[make_pointer_from_object locale]) : [`NSString] Objc.nativeNSObject)
end
(* Class object for NSValue *)
let class_NSValue = object
   val o = Classes.find "NSValue"
   method _new = (Objc.objcnew o : [`NSValue] nativeNSObject)
(* methods for category NSValueExtensionMethods *)
   method valueWithNonretainedObject (anObject : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueWithNonretainedObject:")[make_pointer_from_object anObject]) : [`NSValue] Objc.nativeNSObject)
(*  UNSUPPORTED
   method valueWithPointer (pointer : (*pointer to const void*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueWithPointer:")[(*pointer to const void*) unsupported pointer]) : [`NSValue] Objc.nativeNSObject)

*)
(* methods for category NSValueCreation *)
(*  UNSUPPORTED
   method valueWithBytes  ~objCType:(_type : string ) (value : (*pointer to const void*) unsupported) =
     let sel, args = (
       Objc.arg value "valueWithBytes" (*pointer to const void*) unsupported
       ++ Objc.arg _type "objCType" make_string
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSValue] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method value  ~withObjCType:(_type : string ) (value : (*pointer to const void*) unsupported) =
     let sel, args = (
       Objc.arg value "value" (*pointer to const void*) unsupported
       ++ Objc.arg _type "withObjCType" make_string
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSValue] Objc.nativeNSObject)

*)
end
(* Encapsulation for native instance of NSValue *)
class native_NSValue = fun (o : [`NSValue] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSValueExtensionMethods *)
   method nonretainedObjectValue =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "nonretainedObjectValue:")[]) : [`NSObject] Objc.nativeNSObject)
   method pointerValue =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pointerValue:")[]) : [`void] Objc.nativeNSObject)
   method isEqualToValue (value : [`NSValue] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEqualToValue:")[make_pointer_from_object value]) : bool)
(* methods for category NSValueCreation *)
(*  UNSUPPORTED
   method initWithBytes  ~objCType:(_type : string ) (value : (*pointer to const void*) unsupported) =
     let sel, args = (
       Objc.arg value "initWithBytes" (*pointer to const void*) unsupported
       ++ Objc.arg _type "objCType" make_string
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method getValue (value : [`void] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "getValue:")[make_pointer_from_object value]) : unit)
   method objCType =
     (get_string (Objc.invoke Objc.tag_string o (Selector.find "objCType:")[]) : string)
end
