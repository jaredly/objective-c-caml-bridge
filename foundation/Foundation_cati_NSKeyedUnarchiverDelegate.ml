(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSKeyedUnarchiverDelegate of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method unarchiver_cannotDecodeObjectOfClassName_originalClasses  (unarchiver : [`NSKeyedUnarchiver] Objc.t) (name : [`NSString] Objc.t) (classNames : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg unarchiver "unarchiver" make_pointer_from_object
      ++ Objc.arg name "cannotDecodeObjectOfClassName" make_pointer_from_object
      ++ Objc.arg classNames "originalClasses" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method unarchiver_didDecodeObject  (unarchiver : [`NSKeyedUnarchiver] Objc.t) (_object : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg unarchiver "unarchiver" make_pointer_from_object
      ++ Objc.arg _object "didDecodeObject" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method unarchiver_willReplaceObject_withObject  (unarchiver : [`NSKeyedUnarchiver] Objc.t) (_object : [`NSObject] Objc.t) (newObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg unarchiver "unarchiver" make_pointer_from_object
      ++ Objc.arg _object "willReplaceObject" make_pointer_from_object
      ++ Objc.arg newObject "withObject" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method unarchiverWillFinish (unarchiver : [`NSKeyedUnarchiver] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unarchiverWillFinish:")
      [make_pointer_from_object unarchiver]) : unit)
  method unarchiverDidFinish (unarchiver : [`NSKeyedUnarchiver] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unarchiverDidFinish:")
      [make_pointer_from_object unarchiver]) : unit)
end
