(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSScanner *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method string =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "string")[])
       : [`NSString] Objc.id))
  method scanLocation =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "scanLocation")[])
       : int)
  method setScanLocation (pos : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setScanLocation:")
      [make_int pos]) : unit)
  method setCharactersToBeSkipped (set : [`NSCharacterSet] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCharactersToBeSkipped:")
      [make_pointer_from_object set]) : unit)
  method setCaseSensitive (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCaseSensitive:")
      [make_bool flag]) : unit)
  method setLocale (dict : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLocale:")
      [make_pointer_from_object dict]) : unit)
end
