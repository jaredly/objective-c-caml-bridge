(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSTokenField.methods
end

class t = fun (r :[`NSTokenField] id) -> object
  inherit methods
  inherit NSTextField.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTokenField *)
let c = Classes.find "NSTokenField"
let _new()= (Objc.objcnew c : [`NSTokenField] id)
let alloc() = (Objc.objcalloc c : [`NSTokenField] id)
let defaultCompletionDelay () =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "defaultCompletionDelay")[])
       : float)
let defaultTokenizingCharacterSet () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultTokenizingCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
