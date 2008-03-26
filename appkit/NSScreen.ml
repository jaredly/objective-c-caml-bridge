(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSScreen.methods
end

class t = fun (r :[`NSScreen] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSScreen *)
let c = Classes.find "NSScreen"
let _new()= (Objc.objcnew c : [`NSScreen] id)
let alloc() = (Objc.objcalloc c : [`NSScreen] id)
let screens () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "screens")[])
       : [`NSArray] Objc.id))
let mainScreen () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "mainScreen")[])
       : [`NSScreen] Objc.id))
let deepestScreen () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "deepestScreen")[])
       : [`NSScreen] Objc.id))
