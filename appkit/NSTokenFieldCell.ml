(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSTokenFieldCell.methods
end

class t = fun (r :[`NSTokenFieldCell] id) -> object
  inherit methods
  inherit NSTextFieldCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTokenFieldCell *)
let c = Classes.find "NSTokenFieldCell"
let _new()= (Objc.objcnew c : [`NSTokenFieldCell] id)
let alloc() = (Objc.objcalloc c : [`NSTokenFieldCell] id)
let defaultCompletionDelay () =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "defaultCompletionDelay")[])
       : float)
let defaultTokenizingCharacterSet () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultTokenizingCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
