(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSNumberCreation.methods_NSNumber
  inherit Im_NSNumber.methods
  inherit Foundation_cati_NSDecimalNumberExtensions.methods_NSNumber
end

class t = fun (r :[`NSNumber] id) -> object
  inherit methods
  inherit NSValue.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSNumber *)
let c = Classes.find "NSNumber"
let _new()= (Objc.objcnew c : [`NSNumber] id)
let alloc() = (Objc.objcalloc c : [`NSNumber] id)
(* class methods for category NSNumberCreation of NSNumber *)
let numberWithChar (value : char) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "numberWithChar:")
      [make_char value]) : [`NSNumber] Objc.id))
let numberWithUnsignedChar (value : char) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "numberWithUnsignedChar:")
      [make_char value]) : [`NSNumber] Objc.id))
let numberWithShort (value : int) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "numberWithShort:")
      [make_int value]) : [`NSNumber] Objc.id))
let numberWithUnsignedShort (value : int) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "numberWithUnsignedShort:")
      [make_int value]) : [`NSNumber] Objc.id))
let numberWithInt (value : int) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "numberWithInt:")
      [make_int value]) : [`NSNumber] Objc.id))
let numberWithUnsignedInt (value : int) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "numberWithUnsignedInt:")
      [make_int value]) : [`NSNumber] Objc.id))
let numberWithLong (value : int64) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "numberWithLong:")
      [make_int64 value]) : [`NSNumber] Objc.id))
let numberWithUnsignedLong (value : int64) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "numberWithUnsignedLong:")
      [make_int64 value]) : [`NSNumber] Objc.id))
let numberWithLongLong (value : int64) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "numberWithLongLong:")
      [make_int64 value]) : [`NSNumber] Objc.id))
let numberWithUnsignedLongLong (value : int64) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "numberWithUnsignedLongLong:")
      [make_int64 value]) : [`NSNumber] Objc.id))
let numberWithFloat (value : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "numberWithFloat:")
      [make_float value]) : [`NSNumber] Objc.id))
let numberWithDouble (value : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "numberWithDouble:")
      [make_float value]) : [`NSNumber] Objc.id))
let numberWithBool (value : bool) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "numberWithBool:")
      [make_bool value]) : [`NSNumber] Objc.id))
(* class methods for category NSDecimalNumberExtensions of NSNumber *)
