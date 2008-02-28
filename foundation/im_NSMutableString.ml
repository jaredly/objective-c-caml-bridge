(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMutableString *)
class virtual methods = object (self)
  method virtual repr : [`NSMutableString] Objc.id
  method replaceCharactersInRange  ~withString:(aString : [`NSString] Objc.t ) (range : int * int) =
    let sel, args = (
      Objc.arg range "replaceCharactersInRange" make_range
      ++ Objc.arg aString "withString" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
