(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSDistantObject.methods
end

class t = fun (r :[`NSDistantObject] id) -> object
  inherit methods
  inherit NSProxy.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSDistantObject *)
let c = Classes.find "NSDistantObject"
let _new()= (Objc.objcnew c : [`NSDistantObject] id)
let alloc() = (Objc.objcalloc c : [`NSDistantObject] id)
let proxyWithTarget_connection  (target : [`NSObject] Objc.t) (connection : [`NSConnection] Objc.t) =
    let sel, args = (
      Objc.arg target "proxyWithTarget" make_pointer_from_object
      ++ Objc.arg connection "connection" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDistantObject] Objc.id))
let proxyWithLocal_connection  (target : [`NSObject] Objc.t) (connection : [`NSConnection] Objc.t) =
    let sel, args = (
      Objc.arg target "proxyWithLocal" make_pointer_from_object
      ++ Objc.arg connection "connection" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDistantObject] Objc.id))
