(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMenuItem.methods
end

class t = fun (r :[`NSMenuItem] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMenuItem *)
let c = Classes.find "NSMenuItem"
let _new()= (Objc.objcnew c : [`NSMenuItem] id)
let alloc() = (Objc.objcalloc c : [`NSMenuItem] id)
let setUsesUserKeyEquivalents (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setUsesUserKeyEquivalents:")
      [make_bool flag]) : unit)
let usesUserKeyEquivalents () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "usesUserKeyEquivalents")[])
       : bool)
let separatorItem () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "separatorItem")[])
       : [`NSMenuItem] Objc.id))
