(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSClassDescription.methods
end

class t = fun (r :[`NSClassDescription] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSClassDescription *)
let c = Classes.find "NSClassDescription"
let _new()= (Objc.objcnew c : [`NSClassDescription] id)
let alloc() = (Objc.objcalloc c : [`NSClassDescription] id)
let registerClassDescription_forClass  (description : [`NSClassDescription] Objc.t) (aClass : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg description "registerClassDescription" make_pointer_from_object
      ++ Objc.arg aClass "forClass" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let invalidateClassDescriptionCache () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "invalidateClassDescriptionCache")[])
       : unit)
let classDescriptionForClass (aClass : [`NSObject] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "classDescriptionForClass:")
      [make_pointer_from_object aClass]) : [`NSClassDescription] Objc.id))
