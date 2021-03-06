(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSIndexPath.methods
end

class t = fun (r :[`NSIndexPath] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSIndexPath *)
let c = Classes.find "NSIndexPath"
let _new()= (Objc.objcnew c : [`NSIndexPath] id)
let alloc() = (Objc.objcalloc c : [`NSIndexPath] id)
let indexPathWithIndex (index : int) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "indexPathWithIndex:")
      [make_int index]) : [`NSIndexPath] Objc.id))
(*  UNSUPPORTED
let indexPathWithIndexes_length  (indexes : (*pointer to unsigned int*) unsupported) (length : int) =
    let sel, args = (
      Objc.arg indexes "indexPathWithIndexes" (*pointer to unsigned int*) unsupported
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSIndexPath] Objc.id))

*)
