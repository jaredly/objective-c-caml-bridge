(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSNotificationCenter.methods
end

class t = fun (r :[`NSNotificationCenter] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSNotificationCenter *)
let c = Classes.find "NSNotificationCenter"
let _new()= (Objc.objcnew c : [`NSNotificationCenter] id)
let alloc() = (Objc.objcalloc c : [`NSNotificationCenter] id)
let defaultCenter () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultCenter")[])
       : [`NSNotificationCenter] Objc.id))
