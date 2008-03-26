(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSLocale *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method objectForKey (key : [`NSObject] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectForKey:")
      [make_pointer_from_object key]) : [`NSObject] Objc.id)
  method displayNameForKey_value  (key : [`NSObject] Objc.t) (value : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg key "displayNameForKey" make_pointer_from_object
      ++ Objc.arg value "value" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
end
