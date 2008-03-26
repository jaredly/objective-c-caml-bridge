(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSKeyedArchiverDelegate of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method archiver_willEncodeObject  (archiver : [`NSKeyedArchiver] Objc.t) (_object : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg archiver "archiver" make_pointer_from_object
      ++ Objc.arg _object "willEncodeObject" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method archiver_didEncodeObject  (archiver : [`NSKeyedArchiver] Objc.t) (_object : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg archiver "archiver" make_pointer_from_object
      ++ Objc.arg _object "didEncodeObject" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method archiver_willReplaceObject_withObject  (archiver : [`NSKeyedArchiver] Objc.t) (_object : [`NSObject] Objc.t) (newObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg archiver "archiver" make_pointer_from_object
      ++ Objc.arg _object "willReplaceObject" make_pointer_from_object
      ++ Objc.arg newObject "withObject" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method archiverWillFinish (archiver : [`NSKeyedArchiver] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "archiverWillFinish:")
      [make_pointer_from_object archiver]) : unit)
  method archiverDidFinish (archiver : [`NSKeyedArchiver] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "archiverDidFinish:")
      [make_pointer_from_object archiver]) : unit)
end
