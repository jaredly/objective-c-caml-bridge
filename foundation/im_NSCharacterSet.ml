(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCharacterSet *)
class virtual methods = object (self)
  method virtual repr : [`NSCharacterSet] Objc.id
(*  UNSUPPORTED
  method characterIsMember (aCharacter : (*unichar*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "characterIsMember:")
      [(*unichar*) unsupported aCharacter]) : bool)

*)
  method bitmapRepresentation =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "bitmapRepresentation")[])
       : [`NSData] Objc.id))
  method invertedSet =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "invertedSet")[])
       : [`NSCharacterSet] Objc.id))
(*  UNSUPPORTED
  method longCharacterIsMember (theLongChar : (*UTF32Char*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "longCharacterIsMember:")
      [(*UTF32Char*) unsupported theLongChar]) : bool)

*)
  method isSupersetOfSet (theOtherSet : [`NSCharacterSet] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSupersetOfSet:")
      [make_pointer_from_object theOtherSet]) : bool)
(*  UNSUPPORTED
  method hasMemberInPlane (thePlane : (*uint8_t*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasMemberInPlane:")
      [(*uint8_t*) unsupported thePlane]) : bool)

*)
end
