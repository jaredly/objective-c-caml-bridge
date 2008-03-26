(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMutableAttributedString *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method replaceCharactersInRange_withString  (range : NSRange.t) (str : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg range "replaceCharactersInRange" make_range
      ++ Objc.arg str "withString" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setAttributes_range  (attrs : [`NSDictionary] Objc.t) (range : NSRange.t) =
    let sel, args = (
      Objc.arg attrs "setAttributes" make_pointer_from_object
      ++ Objc.arg range "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
