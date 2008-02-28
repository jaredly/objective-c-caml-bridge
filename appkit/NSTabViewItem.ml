(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTabViewItem] id) -> object
  inherit Im_NSTabViewItem.methods
  method repr = r
end

(* Class object for NSTabViewItem *)
let c = Classes.find "NSTabViewItem"
let _new()= (Objc.objcnew c : [`NSTabViewItem] id)
let alloc() = (Objc.objcalloc c : [`NSTabViewItem] id)
