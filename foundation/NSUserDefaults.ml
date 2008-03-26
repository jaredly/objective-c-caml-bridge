(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSUserDefaults.methods
end

class t = fun (r :[`NSUserDefaults] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSUserDefaults *)
let c = Classes.find "NSUserDefaults"
let _new()= (Objc.objcnew c : [`NSUserDefaults] id)
let alloc() = (Objc.objcalloc c : [`NSUserDefaults] id)
let standardUserDefaults () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "standardUserDefaults")[])
       : [`NSUserDefaults] Objc.id))
let resetStandardUserDefaults () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "resetStandardUserDefaults")[])
       : unit)
