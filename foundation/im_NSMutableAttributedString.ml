(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMutableAttributedString *)
class virtual methods = object (self)
  method virtual repr : [`NSMutableAttributedString] Objc.id
  method replaceCharactersInRange  ~withString:(str : [`NSString] Objc.t ) (range : int * int) =
    let sel, args = (
      Objc.arg range "replaceCharactersInRange" make_range
      ++ Objc.arg str "withString" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setAttributes  ~range:(range : (int * int) ) (attrs : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg attrs "setAttributes" make_pointer_from_object
      ++ Objc.arg range "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
