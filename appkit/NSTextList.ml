(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSTextListPrependEnclosingMarker = 1L


class virtual methods = object
  inherit Im_NSTextList.methods
end

class t = fun (r :[`NSTextList] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTextList *)
let c = Classes.find "NSTextList"
let _new()= (Objc.objcnew c : [`NSTextList] id)
let alloc() = (Objc.objcalloc c : [`NSTextList] id)
