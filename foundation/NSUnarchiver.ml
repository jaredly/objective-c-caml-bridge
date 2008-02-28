(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSUnarchiver] id) -> object
  inherit Im_NSUnarchiver.methods
  method repr = r
end

(* Class object for NSUnarchiver *)
let c = Classes.find "NSUnarchiver"
let _new()= (Objc.objcnew c : [`NSUnarchiver] id)
let alloc() = (Objc.objcalloc c : [`NSUnarchiver] id)
let unarchiveObjectWithData (data : [`NSData] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "unarchiveObjectWithData:")
      [make_pointer_from_object data]) : [`NSUnarchiver] Objc.id))
let unarchiveObjectWithFile (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "unarchiveObjectWithFile:")
      [make_pointer_from_object path]) : [`NSUnarchiver] Objc.id))
let decodeClassName  ~asClassName:(trueName : [`NSString] Objc.t ) (inArchiveName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg inArchiveName "decodeClassName" make_pointer_from_object
      ++ Objc.arg trueName "asClassName" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let classNameDecodedForArchiveClassName (inArchiveName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "classNameDecodedForArchiveClassName:")
      [make_pointer_from_object inArchiveName]) : [`NSString] Objc.id))
