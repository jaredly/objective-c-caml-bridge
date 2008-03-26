(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSTextTable.methods
end

class t = fun (r :[`NSTextTable] id) -> object
  inherit methods
  inherit NSTextBlock.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTextTable *)
let c = Classes.find "NSTextTable"
let _new()= (Objc.objcnew c : [`NSTextTable] id)
let alloc() = (Objc.objcalloc c : [`NSTextTable] id)
