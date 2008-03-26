(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSDistributedLock.methods
end

class t = fun (r :[`NSDistributedLock] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSDistributedLock *)
let c = Classes.find "NSDistributedLock"
let _new()= (Objc.objcnew c : [`NSDistributedLock] id)
let alloc() = (Objc.objcalloc c : [`NSDistributedLock] id)
let lockWithPath (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "lockWithPath:")
      [make_pointer_from_object path]) : [`NSDistributedLock] Objc.id))
