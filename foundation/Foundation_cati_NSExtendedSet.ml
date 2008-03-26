(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedSet of NSSet *)
class virtual methods_NSSet = object (self)
  method virtual repr : [`NSObject] Objc.id
  method allObjects =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "allObjects")[])
       : [`NSArray] Objc.id))
  method anyObject =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "anyObject")[])
       : [`NSObject] Objc.id)
  method containsObject (anObject : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "containsObject:")
      [make_pointer_from_object anObject]) : bool)
  method description =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "description")[])
       : [`NSString] Objc.id))
  method descriptionWithLocale (locale : [`NSDictionary] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "descriptionWithLocale:")
      [make_pointer_from_object locale]) : [`NSString] Objc.id))
  method intersectsSet (otherSet : [`NSSet] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "intersectsSet:")
      [make_pointer_from_object otherSet]) : bool)
  method isEqualToSet (otherSet : [`NSSet] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEqualToSet:")
      [make_pointer_from_object otherSet]) : bool)
  method isSubsetOfSet (otherSet : [`NSSet] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSubsetOfSet:")
      [make_pointer_from_object otherSet]) : bool)
  method makeObjectsPerformSelector (aSelector : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "makeObjectsPerformSelector:")
      [make_selector aSelector]) : unit)
  method makeObjectsPerformSelector_withObject  (aSelector : selector) (argument : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg aSelector "makeObjectsPerformSelector" make_selector
      ++ Objc.arg argument "withObject" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
