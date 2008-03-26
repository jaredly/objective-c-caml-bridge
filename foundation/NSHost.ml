(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSHost.methods
end

class t = fun (r :[`NSHost] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSHost *)
let c = Classes.find "NSHost"
let _new()= (Objc.objcnew c : [`NSHost] id)
let alloc() = (Objc.objcalloc c : [`NSHost] id)
let currentHost () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentHost")[])
       : [`NSHost] Objc.id))
let hostWithName (name : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "hostWithName:")
      [make_pointer_from_object name]) : [`NSHost] Objc.id))
let hostWithAddress (address : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "hostWithAddress:")
      [make_pointer_from_object address]) : [`NSHost] Objc.id))
let setHostCacheEnabled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setHostCacheEnabled:")
      [make_bool flag]) : unit)
let isHostCacheEnabled () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "isHostCacheEnabled")[])
       : bool)
let flushHostCache () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "flushHostCache")[])
       : unit)
