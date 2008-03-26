(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSMutableStringExtensionMethods of NSMutableString *)
class virtual methods_NSMutableString = object (self)
  method virtual repr : [`NSObject] Objc.id
  method insertString_atIndex  (aString : [`NSString] Objc.t) (loc : int) =
    let sel, args = (
      Objc.arg aString "insertString" make_pointer_from_object
      ++ Objc.arg loc "atIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method deleteCharactersInRange (range : NSRange.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deleteCharactersInRange:")
      [make_range range]) : unit)
  method appendString (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "appendString:")
      [make_pointer_from_object aString]) : unit)
  method setString (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setString:")
      [make_pointer_from_object aString]) : unit)
  method initWithCapacity (capacity : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithCapacity:")
      [make_int capacity]) : [`NSObject] Objc.id)
  method replaceOccurrencesOfString_withString_options_range  (target : [`NSString] Objc.t) (replacement : [`NSString] Objc.t) (opts : int) (searchRange : NSRange.t) =
    let sel, args = (
      Objc.arg target "replaceOccurrencesOfString" make_pointer_from_object
      ++ Objc.arg replacement "withString" make_pointer_from_object
      ++ Objc.arg opts "options" make_int
      ++ Objc.arg searchRange "range" make_range
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
end
