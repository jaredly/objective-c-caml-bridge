(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSTimeZoneCreation of NSTimeZone *)
class virtual methods_NSTimeZone = object (self)
  method virtual repr : [`NSTimeZone] Objc.id
  (* skipping selector initWithName *)
  method initWithName  ?data:(aData : [`NSData] Objc.t option) (tzName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg tzName "initWithName" make_pointer_from_object
      ++ Objc.opt_arg aData "data" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
