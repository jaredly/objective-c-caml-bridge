(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSegmentedCell] id) -> object
  inherit Im_NSSegmentedCell.methods
  method repr = r
end

(* Class object for NSSegmentedCell *)
let c = Classes.find "NSSegmentedCell"
let _new()= (Objc.objcnew c : [`NSSegmentedCell] id)
let alloc() = (Objc.objcalloc c : [`NSSegmentedCell] id)
