(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSTextStorageEditedAttributes = 1L
let _NSTextStorageEditedCharacters = 2L


class t = fun (r :[`NSTextStorage] id) -> object
  inherit Im_NSTextStorage.methods
  method repr = r
end

(* Class object for NSTextStorage *)
let c = Classes.find "NSTextStorage"
let _new()= (Objc.objcnew c : [`NSTextStorage] id)
let alloc() = (Objc.objcalloc c : [`NSTextStorage] id)
