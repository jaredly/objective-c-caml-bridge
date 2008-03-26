(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSLevelIndicatorCell.methods
end

class t = fun (r :[`NSLevelIndicatorCell] id) -> object
  inherit methods
  inherit NSActionCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSLevelIndicatorCell *)
let c = Classes.find "NSLevelIndicatorCell"
let _new()= (Objc.objcnew c : [`NSLevelIndicatorCell] id)
let alloc() = (Objc.objcalloc c : [`NSLevelIndicatorCell] id)
