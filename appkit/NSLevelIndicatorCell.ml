(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSLevelIndicatorCell] id) -> object
  inherit Im_NSLevelIndicatorCell.methods
  method repr = r
end

(* Class object for NSLevelIndicatorCell *)
let c = Classes.find "NSLevelIndicatorCell"
let _new()= (Objc.objcnew c : [`NSLevelIndicatorCell] id)
let alloc() = (Objc.objcalloc c : [`NSLevelIndicatorCell] id)
