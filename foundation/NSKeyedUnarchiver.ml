(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSKeyedUnarchiver.methods
end

class t = fun (r :[`NSKeyedUnarchiver] id) -> object
  inherit methods
  inherit NSCoder.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSKeyedUnarchiver *)
let c = Classes.find "NSKeyedUnarchiver"
let _new()= (Objc.objcnew c : [`NSKeyedUnarchiver] id)
let alloc() = (Objc.objcalloc c : [`NSKeyedUnarchiver] id)
let unarchiveObjectWithData (data : [`NSData] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "unarchiveObjectWithData:")
      [make_pointer_from_object data]) : [`NSKeyedUnarchiver] Objc.id))
let unarchiveObjectWithFile (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "unarchiveObjectWithFile:")
      [make_pointer_from_object path]) : [`NSKeyedUnarchiver] Objc.id))
let setClass_forClassName  (cls : [`NSObject] Objc.t) (codedName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg cls "setClass" make_pointer_from_object
      ++ Objc.arg codedName "forClassName" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let classForClassName (codedName : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "classForClassName:")
      [make_pointer_from_object codedName]) : [`NSKeyedUnarchiver] Objc.id))
