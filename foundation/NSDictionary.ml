(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSKeyValueCoding.methods_NSDictionary
  inherit Foundation_cati_NSFileAttributes.methods_NSDictionary
  inherit Foundation_cati_NSDictionaryCreation.methods_NSDictionary
  inherit Foundation_cati_NSExtendedDictionary.methods_NSDictionary
  inherit Im_NSDictionary.methods
end

class t = fun (r :[`NSDictionary] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSDictionary *)
let c = Classes.find "NSDictionary"
let _new()= (Objc.objcnew c : [`NSDictionary] id)
let alloc() = (Objc.objcalloc c : [`NSDictionary] id)
(* class methods for category NSKeyValueCoding of NSDictionary *)
(* class methods for category NSFileAttributes of NSDictionary *)
(* class methods for category NSDictionaryCreation of NSDictionary *)
let dictionary () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dictionary")[])
       : [`NSDictionary] Objc.id))
let dictionaryWithContentsOfFile (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dictionaryWithContentsOfFile:")
      [make_pointer_from_object path]) : [`NSDictionary] Objc.id))
let dictionaryWithContentsOfURL (url : [`NSURL] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dictionaryWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSDictionary] Objc.id))
let dictionaryWithObjects_forKeys  (objects : [`NSArray] Objc.t) (keys : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg objects "dictionaryWithObjects" make_pointer_from_object
      ++ Objc.arg keys "forKeys" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDictionary] Objc.id))
let dictionaryWithObjects_forKeys_count  (objects : [`id] Objc.t) (keys : [`id] Objc.t) (count : int) =
    let sel, args = (
      Objc.arg objects "dictionaryWithObjects" make_pointer_from_object
      ++ Objc.arg keys "forKeys" make_pointer_from_object
      ++ Objc.arg count "count" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDictionary] Objc.id))
let dictionaryWithDictionary (dict : [`NSDictionary] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dictionaryWithDictionary:")
      [make_pointer_from_object dict]) : [`NSDictionary] Objc.id))
let dictionaryWithObject_forKey  (_object : [`NSObject] Objc.t) (key : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg _object "dictionaryWithObject" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDictionary] Objc.id))
(* class methods for category NSExtendedDictionary of NSDictionary *)
