(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMutableDictionary *)
class virtual methods = object (self)
  method virtual repr : [`NSMutableDictionary] Objc.id
  method removeObjectForKey (aKey : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeObjectForKey:")
      [make_pointer_from_object aKey]) : unit)
  method setObject  ~forKey:(aKey : [`NSObject] Objc.t ) (anObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg anObject "setObject" make_pointer_from_object
      ++ Objc.arg aKey "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
