(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTokenFieldCell] id) -> object
  inherit Im_NSTokenFieldCell.methods
  method repr = r
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
