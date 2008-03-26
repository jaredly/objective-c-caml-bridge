(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSKeyValueObserverNotification of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method willChangeValueForKey (key : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "willChangeValueForKey:")
      [make_pointer_from_object key]) : unit)
  method didChangeValueForKey (key : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "didChangeValueForKey:")
      [make_pointer_from_object key]) : unit)
  method willChange_valuesAtIndexes_forKey  (changeKind : int) (indexes : [`NSIndexSet] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg changeKind "willChange" make_int
      ++ Objc.arg indexes "valuesAtIndexes" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method didChange_valuesAtIndexes_forKey  (changeKind : int) (indexes : [`NSIndexSet] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg changeKind "didChange" make_int
      ++ Objc.arg indexes "valuesAtIndexes" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method willChangeValueForKey_withSetMutation_usingObjects  (key : [`NSString] Objc.t) (mutationKind : int) (objects : [`NSSet] Objc.t) =
    let sel, args = (
      Objc.arg key "willChangeValueForKey" make_pointer_from_object
      ++ Objc.arg mutationKind "withSetMutation" make_int
      ++ Objc.arg objects "usingObjects" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method didChangeValueForKey_withSetMutation_usingObjects  (key : [`NSString] Objc.t) (mutationKind : int) (objects : [`NSSet] Objc.t) =
    let sel, args = (
      Objc.arg key "didChangeValueForKey" make_pointer_from_object
      ++ Objc.arg mutationKind "withSetMutation" make_int
      ++ Objc.arg objects "usingObjects" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
