(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSTimeZoneCreation of NSTimeZone *)
class virtual methods_NSTimeZone = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithName (tzName : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithName:")
      [make_pointer_from_object tzName]) : [`NSObject] Objc.id)
  method initWithName_data  (tzName : [`NSString] Objc.t) (aData : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg tzName "initWithName" make_pointer_from_object
      ++ Objc.arg aData "data" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
