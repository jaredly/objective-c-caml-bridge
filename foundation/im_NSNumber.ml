(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSNumber *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method charValue =
    (get_char (Objc.invoke Objc.tag_char self#repr (Selector.find "charValue")[])
       : char)
  method unsignedCharValue =
    (get_char (Objc.invoke Objc.tag_char self#repr (Selector.find "unsignedCharValue")[])
       : char)
  method shortValue =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "shortValue")[])
       : int)
  method unsignedShortValue =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "unsignedShortValue")[])
       : int)
  method intValue =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "intValue")[])
       : int)
  method unsignedIntValue =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "unsignedIntValue")[])
       : int)
  method longValue =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "longValue")[])
       : int64)
  method unsignedLongValue =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "unsignedLongValue")[])
       : int64)
  method longLongValue =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "longLongValue")[])
       : int64)
  method unsignedLongLongValue =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "unsignedLongLongValue")[])
       : int64)
  method floatValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "floatValue")[])
       : float)
  method doubleValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "doubleValue")[])
       : float)
  method boolValue =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "boolValue")[])
       : bool)
  method stringValue =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringValue")[])
       : [`NSString] Objc.id))
  method compare (otherNumber : [`NSNumber] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "compare:")
      [make_pointer_from_object otherNumber]) : int)
  method isEqualToNumber (number : [`NSNumber] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEqualToNumber:")
      [make_pointer_from_object number]) : bool)
  method descriptionWithLocale (locale : [`NSDictionary] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "descriptionWithLocale:")
      [make_pointer_from_object locale]) : [`NSString] Objc.id))
end
