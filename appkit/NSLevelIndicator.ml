(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSLevelIndicator] id) -> object
  inherit Im_NSLevelIndicator.methods
  method repr = r
end

(* Class object for NSLevelIndicator *)
let c = Classes.find "NSLevelIndicator"
let _new()= (Objc.objcnew c : [`NSLevelIndicator] id)
let alloc() = (Objc.objcalloc c : [`NSLevelIndicator] id)
