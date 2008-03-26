(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSColorList *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithName (name : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithName:")
      [make_pointer_from_object name]) : [`NSObject] Objc.id)
  method initWithName_fromFile  (name : [`NSString] Objc.t) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "initWithName" make_pointer_from_object
      ++ Objc.arg path "fromFile" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method setColor_forKey  (color : [`NSColor] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg color "setColor" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method insertColor_key_atIndex  (color : [`NSColor] Objc.t) (key : [`NSString] Objc.t) (loc : int) =
    let sel, args = (
      Objc.arg color "insertColor" make_pointer_from_object
      ++ Objc.arg key "key" make_pointer_from_object
      ++ Objc.arg loc "atIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeColorWithKey (key : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeColorWithKey:")
      [make_pointer_from_object key]) : unit)
  method colorWithKey (key : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "colorWithKey:")
      [make_pointer_from_object key]) : [`NSColor] Objc.id))
  method allKeys =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "allKeys")[])
       : [`NSArray] Objc.id))
  method isEditable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEditable")[])
       : bool)
  method writeToFile (path : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "writeToFile:")
      [make_pointer_from_object path]) : bool)
  method removeFile =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeFile")[])
       : unit)
end
