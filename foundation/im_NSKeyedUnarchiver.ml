(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSKeyedUnarchiver *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initForReadingWithData (data : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initForReadingWithData:")
      [make_pointer_from_object data]) : [`NSObject] Objc.id)
  method setDelegate (delegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object delegate]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method finishDecoding =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "finishDecoding")[])
       : unit)
  method setClass_forClassName  (cls : [`NSObject] Objc.t) (codedName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg cls "setClass" make_pointer_from_object
      ++ Objc.arg codedName "forClassName" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method classForClassName (codedName : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "classForClassName:")
      [make_pointer_from_object codedName]) : [`NSObject] Objc.id)
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
