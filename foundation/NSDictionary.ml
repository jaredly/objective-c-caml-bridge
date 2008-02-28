(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSDictionary] id) -> object
  inherit Cati_NSDictionaryCreation.methods_NSDictionary
  inherit Cati_NSExtendedDictionary.methods_NSDictionary
  inherit Im_NSDictionary.methods
  method repr = r
end

(* Class object for NSDictionary *)
let c = Classes.find "NSDictionary"
let _new()= (Objc.objcnew c : [`NSDictionary] id)
let alloc() = (Objc.objcalloc c : [`NSDictionary] id)
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
let dictionaryWithObjects  ~forKeys:(keys : [`NSArray] Objc.t ) (objects : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg objects "dictionaryWithObjects" make_pointer_from_object
      ++ Objc.arg keys "forKeys" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDictionary] Objc.id))
  (* skipping selector dictionaryWithObjects:forKeys:count *)
let dictionaryWithDictionary (dict : [`NSDictionary] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dictionaryWithDictionary:")
      [make_pointer_from_object dict]) : [`NSDictionary] Objc.id))
let dictionaryWithObject  ~forKey:(key : [`NSObject] Objc.t ) (_object : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg _object "dictionaryWithObject" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDictionary] Objc.id))
(* class methods for category NSExtendedDictionary of NSDictionary *)
