(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSStatusItemView.methods_NSStatusItem
  inherit AppKit_cati_NSStatusItemCommon.methods_NSStatusItem
  inherit Im_NSStatusItem.methods
end

class t = fun (r :[`NSStatusItem] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSStatusItem *)
let c = Classes.find "NSStatusItem"
let _new()= (Objc.objcnew c : [`NSStatusItem] id)
let alloc() = (Objc.objcalloc c : [`NSStatusItem] id)
(* class methods for category NSStatusItemView of NSStatusItem *)
(* class methods for category NSStatusItemCommon of NSStatusItem *)
