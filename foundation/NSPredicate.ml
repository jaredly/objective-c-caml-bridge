(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPredicate] id) -> object
  inherit Im_NSPredicate.methods
  method repr = r
end

(* Class object for NSPredicate *)
let c = Classes.find "NSPredicate"
let _new()= (Objc.objcnew c : [`NSPredicate] id)
let alloc() = (Objc.objcalloc c : [`NSPredicate] id)
let predicateWithFormat  ?argumentArray:(arguments : [`NSArray] Objc.t option) (predicateFormat : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg predicateFormat "predicateWithFormat" make_pointer_from_object
      ++ Objc.opt_arg arguments "argumentArray" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPredicate] Objc.id))
  (* skipping selector predicateWithFormat:arguments *)
let predicateWithValue (value : bool) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "predicateWithValue:")
      [make_bool value]) : [`NSPredicate] Objc.id))
