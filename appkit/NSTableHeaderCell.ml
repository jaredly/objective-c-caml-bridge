(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSTableHeaderCell.methods
end

class t = fun (r :[`NSTableHeaderCell] id) -> object
  inherit methods
  inherit NSTextFieldCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTableHeaderCell *)
let c = Classes.find "NSTableHeaderCell"
let _new()= (Objc.objcnew c : [`NSTableHeaderCell] id)
let alloc() = (Objc.objcalloc c : [`NSTableHeaderCell] id)
