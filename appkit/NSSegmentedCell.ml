(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSegmentedCell.methods
end

class t = fun (r :[`NSSegmentedCell] id) -> object
  inherit methods
  inherit NSActionCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSegmentedCell *)
let c = Classes.find "NSSegmentedCell"
let _new()= (Objc.objcnew c : [`NSSegmentedCell] id)
let alloc() = (Objc.objcalloc c : [`NSSegmentedCell] id)
