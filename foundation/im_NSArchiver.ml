(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSArchiver *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initForWritingWithMutableData (mdata : [`NSMutableData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initForWritingWithMutableData:")
      [make_pointer_from_object mdata]) : [`NSObject] Objc.id)
  method archiverData =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "archiverData")[])
       : [`NSMutableData] Objc.id))
  method encodeRootObject (rootObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodeRootObject:")
      [make_pointer_from_object rootObject]) : unit)
  method encodeConditionalObject (_object : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodeConditionalObject:")
      [make_pointer_from_object _object]) : unit)
  method encodeClassName_intoClassName  (trueName : [`NSString] Objc.t) (inArchiveName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg trueName "encodeClassName" make_pointer_from_object
      ++ Objc.arg inArchiveName "intoClassName" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method classNameEncodedForTrueClassName (trueName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "classNameEncodedForTrueClassName:")
      [make_pointer_from_object trueName]) : [`NSString] Objc.id))
  method replaceObject_withObject  (_object : [`NSObject] Objc.t) (newObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg _object "replaceObject" make_pointer_from_object
      ++ Objc.arg newObject "withObject" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
