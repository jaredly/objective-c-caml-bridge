(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSExpression] id) -> object
  inherit Im_NSExpression.methods
  method repr = r
end

(* Class object for NSExpression *)
let c = Classes.find "NSExpression"
let _new()= (Objc.objcnew c : [`NSExpression] id)
let alloc() = (Objc.objcalloc c : [`NSExpression] id)
let expressionForConstantValue (obj : [`NSObject] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "expressionForConstantValue:")
      [make_pointer_from_object obj]) : [`NSExpression] Objc.id))
let expressionForEvaluatedObject () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "expressionForEvaluatedObject")[])
       : [`NSExpression] Objc.id))
let expressionForVariable (string : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "expressionForVariable:")
      [make_pointer_from_object string]) : [`NSExpression] Objc.id))
let expressionForKeyPath (keyPath : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "expressionForKeyPath:")
      [make_pointer_from_object keyPath]) : [`NSExpression] Objc.id))
let expressionForFunction  ~arguments:(parameters : [`NSArray] Objc.t ) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "expressionForFunction" make_pointer_from_object
      ++ Objc.arg parameters "arguments" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSExpression] Objc.id))
