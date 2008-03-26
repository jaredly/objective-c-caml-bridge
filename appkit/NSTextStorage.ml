(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSTextStorageEditedAttributes = 1L
let _NSTextStorageEditedCharacters = 2L


class virtual methods = object
  inherit AppKit_cati_Scripting.methods_NSTextStorage
  inherit Im_NSTextStorage.methods
end

class t = fun (r :[`NSTextStorage] id) -> object
  inherit methods
  inherit NSMutableAttributedString.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTextStorage *)
let c = Classes.find "NSTextStorage"
let _new()= (Objc.objcnew c : [`NSTextStorage] id)
let alloc() = (Objc.objcalloc c : [`NSTextStorage] id)
(* class methods for category Scripting of NSTextStorage *)
