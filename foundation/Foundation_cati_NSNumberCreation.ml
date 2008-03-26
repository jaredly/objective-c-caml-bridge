(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSNumberCreation of NSNumber *)
class virtual methods_NSNumber = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithChar (value : char) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithChar:")
      [make_char value]) : [`NSObject] Objc.id)
  method initWithUnsignedChar (value : char) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithUnsignedChar:")
      [make_char value]) : [`NSObject] Objc.id)
  method initWithShort (value : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithShort:")
      [make_int value]) : [`NSObject] Objc.id)
  method initWithUnsignedShort (value : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithUnsignedShort:")
      [make_int value]) : [`NSObject] Objc.id)
  method initWithInt (value : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithInt:")
      [make_int value]) : [`NSObject] Objc.id)
  method initWithUnsignedInt (value : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithUnsignedInt:")
      [make_int value]) : [`NSObject] Objc.id)
  method initWithLong (value : int64) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithLong:")
      [make_int64 value]) : [`NSObject] Objc.id)
  method initWithUnsignedLong (value : int64) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithUnsignedLong:")
      [make_int64 value]) : [`NSObject] Objc.id)
  method initWithLongLong (value : int64) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithLongLong:")
      [make_int64 value]) : [`NSObject] Objc.id)
  method initWithUnsignedLongLong (value : int64) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithUnsignedLongLong:")
      [make_int64 value]) : [`NSObject] Objc.id)
  method initWithFloat (value : float) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithFloat:")
      [make_float value]) : [`NSObject] Objc.id)
  method initWithDouble (value : float) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithDouble:")
      [make_float value]) : [`NSObject] Objc.id)
  method initWithBool (value : bool) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithBool:")
      [make_bool value]) : [`NSObject] Objc.id)
end
