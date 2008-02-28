(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSArchiver] id) -> object
  inherit Im_NSArchiver.methods
  method repr = r
end

(* Class object for NSArchiver *)
let c = Classes.find "NSArchiver"
let _new()= (Objc.objcnew c : [`NSArchiver] id)
let alloc() = (Objc.objcalloc c : [`NSArchiver] id)
let archivedDataWithRootObject (rootObject : [`NSObject] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "archivedDataWithRootObject:")
      [make_pointer_from_object rootObject]) : [`NSData] Objc.id))
let archiveRootObject  ~toFile:(path : [`NSString] Objc.t ) (rootObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg rootObject "archiveRootObject" make_pointer_from_object
      ++ Objc.arg path "toFile" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool c (Selector.find_list sel) args)
       : bool)
