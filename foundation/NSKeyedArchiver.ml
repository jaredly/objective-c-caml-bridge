(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSKeyedArchiver.methods
end

class t = fun (r :[`NSKeyedArchiver] id) -> object
  inherit methods
  inherit NSCoder.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSKeyedArchiver *)
let c = Classes.find "NSKeyedArchiver"
let _new()= (Objc.objcnew c : [`NSKeyedArchiver] id)
let alloc() = (Objc.objcalloc c : [`NSKeyedArchiver] id)
let archivedDataWithRootObject (rootObject : [`NSObject] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "archivedDataWithRootObject:")
      [make_pointer_from_object rootObject]) : [`NSData] Objc.id))
let archiveRootObject_toFile  (rootObject : [`NSObject] Objc.t) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg rootObject "archiveRootObject" make_pointer_from_object
      ++ Objc.arg path "toFile" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool c (Selector.find_list sel) args)
       : bool)
let setClassName_forClass  (codedName : [`NSString] Objc.t) (cls : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg codedName "setClassName" make_pointer_from_object
      ++ Objc.arg cls "forClass" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let classNameForClass (cls : [`NSObject] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "classNameForClass:")
      [make_pointer_from_object cls]) : [`NSString] Objc.id))
