(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSURLHandle.methods
end

class t = fun (r :[`NSURLHandle] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSURLHandle *)
let c = Classes.find "NSURLHandle"
let _new()= (Objc.objcnew c : [`NSURLHandle] id)
let alloc() = (Objc.objcalloc c : [`NSURLHandle] id)
let registerURLHandleClass (anURLHandleSubclass : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "registerURLHandleClass:")
      [make_pointer_from_object anURLHandleSubclass]) : unit)
let urlHandleClassForURL (anURL : [`NSURL] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "URLHandleClassForURL:")
      [make_pointer_from_object anURL]) : [`NSURLHandle] Objc.id))
let canInitWithURL (anURL : [`NSURL] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "canInitWithURL:")
      [make_pointer_from_object anURL]) : bool)
let cachedHandleForURL (anURL : [`NSURL] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "cachedHandleForURL:")
      [make_pointer_from_object anURL]) : [`NSURLHandle] Objc.id))
