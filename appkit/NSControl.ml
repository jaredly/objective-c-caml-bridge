(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSControl] id) -> object
  inherit Cati_NSControlAttributedStringMethods.methods_NSControl
  inherit Cati_NSKeyboardUI.methods_NSControl
  inherit Im_NSControl.methods
  method repr = r
end

(* Class object for NSControl *)
let c = Classes.find "NSControl"
let _new()= (Objc.objcnew c : [`NSControl] id)
let alloc() = (Objc.objcalloc c : [`NSControl] id)
(* class methods for category NSControlAttributedStringMethods of NSControl *)
(* class methods for category NSKeyboardUI of NSControl *)
let setCellClass (factoryId : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setCellClass:")
      [make_pointer_from_object factoryId]) : unit)
let cellClass () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "cellClass")[])
       : [`NSControl] Objc.id))
