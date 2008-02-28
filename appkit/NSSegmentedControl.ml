(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSegmentedControl] id) -> object
  inherit Im_NSSegmentedControl.methods
  method repr = r
end

(* Class object for NSSegmentedControl *)
let c = Classes.find "NSSegmentedControl"
let _new()= (Objc.objcnew c : [`NSSegmentedControl] id)
let alloc() = (Objc.objcalloc c : [`NSSegmentedControl] id)
