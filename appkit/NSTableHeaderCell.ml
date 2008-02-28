(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTableHeaderCell] id) -> object
  inherit Im_NSTableHeaderCell.methods
  method repr = r
end

(* Class object for NSTableHeaderCell *)
let c = Classes.find "NSTableHeaderCell"
let _new()= (Objc.objcnew c : [`NSTableHeaderCell] id)
let alloc() = (Objc.objcalloc c : [`NSTableHeaderCell] id)
