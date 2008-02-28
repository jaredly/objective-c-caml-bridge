(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSColorList] id) -> object
  inherit Im_NSColorList.methods
  method repr = r
end

(* Class object for NSColorList *)
let c = Classes.find "NSColorList"
let _new()= (Objc.objcnew c : [`NSColorList] id)
let alloc() = (Objc.objcalloc c : [`NSColorList] id)
let availableColorLists () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "availableColorLists")[])
       : [`NSArray] Objc.id))
let colorListNamed (name : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "colorListNamed:")
      [make_pointer_from_object name]) : [`NSColorList] Objc.id))
