(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedMutableDictionary of NSMutableDictionary *)
class virtual methods_NSMutableDictionary = object (self)
  method virtual repr : [`NSObject] Objc.id
  method addEntriesFromDictionary (otherDictionary : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addEntriesFromDictionary:")
      [make_pointer_from_object otherDictionary]) : unit)
  method removeAllObjects =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeAllObjects")[])
       : unit)
  method removeObjectsForKeys (keyArray : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeObjectsForKeys:")
      [make_pointer_from_object keyArray]) : unit)
  method setDictionary (otherDictionary : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDictionary:")
      [make_pointer_from_object otherDictionary]) : unit)
end
