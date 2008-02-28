(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSTextListPrependEnclosingMarker = 1L


class t = fun (r :[`NSTextList] id) -> object
  inherit Im_NSTextList.methods
  method repr = r
end

(* Class object for NSTextList *)
let c = Classes.find "NSTextList"
let _new()= (Objc.objcnew c : [`NSTextList] id)
let alloc() = (Objc.objcalloc c : [`NSTextList] id)
