(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSUnarchiver *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initForReadingWithData (data : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initForReadingWithData:")
      [make_pointer_from_object data]) : [`NSObject] Objc.id)
  method setObjectZone (zone : [`NSZone] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setObjectZone:")
      [make_pointer_from_object zone]) : unit)
  method objectZone =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectZone")[])
       : [`NSZone] Objc.id))
  method isAtEnd =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isAtEnd")[])
       : bool)
  method systemVersion =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "systemVersion")[])
       : int)
  method decodeClassName_asClassName  (inArchiveName : [`NSString] Objc.t) (trueName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg inArchiveName "decodeClassName" make_pointer_from_object
      ++ Objc.arg trueName "asClassName" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method classNameDecodedForArchiveClassName (inArchiveName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "classNameDecodedForArchiveClassName:")
      [make_pointer_from_object inArchiveName]) : [`NSString] Objc.id))
  method replaceObject_withObject  (_object : [`NSObject] Objc.t) (newObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg _object "replaceObject" make_pointer_from_object
      ++ Objc.arg newObject "withObject" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
