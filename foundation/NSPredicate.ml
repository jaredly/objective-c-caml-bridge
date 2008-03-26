(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPredicate.methods
end

class t = fun (r :[`NSPredicate] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPredicate *)
let c = Classes.find "NSPredicate"
let _new()= (Objc.objcnew c : [`NSPredicate] id)
let alloc() = (Objc.objcalloc c : [`NSPredicate] id)
let predicateWithFormat_argumentArray  (predicateFormat : [`NSString] Objc.t) (arguments : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg predicateFormat "predicateWithFormat" make_pointer_from_object
      ++ Objc.arg arguments "argumentArray" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPredicate] Objc.id))
(*  UNSUPPORTED
let predicateWithFormat_arguments  (predicateFormat : [`NSString] Objc.t) (argList : (*va_list*) unsupported) =
    let sel, args = (
      Objc.arg predicateFormat "predicateWithFormat" make_pointer_from_object
      ++ Objc.arg argList "arguments" (*va_list*) unsupported
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPredicate] Objc.id))

*)
let predicateWithValue (value : bool) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "predicateWithValue:")
      [make_bool value]) : [`NSPredicate] Objc.id))
