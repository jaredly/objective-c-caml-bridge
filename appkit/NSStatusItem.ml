(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSStatusItem] id) -> object
  inherit Cati_NSStatusItemView.methods_NSStatusItem
  inherit Cati_NSStatusItemCommon.methods_NSStatusItem
  inherit Im_NSStatusItem.methods
  method repr = r
end

(* Class object for NSStatusItem *)
let c = Classes.find "NSStatusItem"
let _new()= (Objc.objcnew c : [`NSStatusItem] id)
let alloc() = (Objc.objcalloc c : [`NSStatusItem] id)
(* class methods for category NSStatusItemView of NSStatusItem *)
(* class methods for category NSStatusItemCommon of NSStatusItem *)
