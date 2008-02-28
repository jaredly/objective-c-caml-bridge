(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSDistantObject] id) -> object
  inherit Im_NSDistantObject.methods
  method repr = r
end

(* Class object for NSDistantObject *)
let c = Classes.find "NSDistantObject"
let _new()= (Objc.objcnew c : [`NSDistantObject] id)
let alloc() = (Objc.objcalloc c : [`NSDistantObject] id)
let proxyWithTarget  ~connection:(connection : [`NSConnection] Objc.t ) (target : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg target "proxyWithTarget" make_pointer_from_object
      ++ Objc.arg connection "connection" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDistantObject] Objc.id))
let proxyWithLocal  ~connection:(connection : [`NSConnection] Objc.t ) (target : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg target "proxyWithLocal" make_pointer_from_object
      ++ Objc.arg connection "connection" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDistantObject] Objc.id))
