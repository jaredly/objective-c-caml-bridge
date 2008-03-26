(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMutableCharacterSet *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method addCharactersInRange (aRange : NSRange.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addCharactersInRange:")
      [make_range aRange]) : unit)
  method removeCharactersInRange (aRange : NSRange.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeCharactersInRange:")
      [make_range aRange]) : unit)
  method addCharactersInString (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addCharactersInString:")
      [make_pointer_from_object aString]) : unit)
  method removeCharactersInString (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeCharactersInString:")
      [make_pointer_from_object aString]) : unit)
  method formUnionWithCharacterSet (otherSet : [`NSCharacterSet] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "formUnionWithCharacterSet:")
      [make_pointer_from_object otherSet]) : unit)
  method formIntersectionWithCharacterSet (otherSet : [`NSCharacterSet] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "formIntersectionWithCharacterSet:")
      [make_pointer_from_object otherSet]) : unit)
  method invert =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "invert")[])
       : unit)
end
