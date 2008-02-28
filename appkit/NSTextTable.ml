(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTextTable] id) -> object
  inherit Im_NSTextTable.methods
  method repr = r
end

(* Class object for NSTextTable *)
let c = Classes.find "NSTextTable"
let _new()= (Objc.objcnew c : [`NSTextTable] id)
let alloc() = (Objc.objcalloc c : [`NSTextTable] id)
