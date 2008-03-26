(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSValueTransformer.methods
end

class t = fun (r :[`NSValueTransformer] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSValueTransformer *)
let c = Classes.find "NSValueTransformer"
let _new()= (Objc.objcnew c : [`NSValueTransformer] id)
let alloc() = (Objc.objcalloc c : [`NSValueTransformer] id)
let setValueTransformer_forName  (transformer : [`NSValueTransformer] Objc.t) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg transformer "setValueTransformer" make_pointer_from_object
      ++ Objc.arg name "forName" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let valueTransformerForName (name : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "valueTransformerForName:")
      [make_pointer_from_object name]) : [`NSValueTransformer] Objc.id))
let valueTransformerNames () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "valueTransformerNames")[])
       : [`NSArray] Objc.id))
let transformedValueClass () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "transformedValueClass")[])
       : [`NSValueTransformer] Objc.id))
let allowsReverseTransformation () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "allowsReverseTransformation")[])
       : bool)
