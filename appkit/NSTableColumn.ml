(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSTableColumnNoResizing = 0L
let _NSTableColumnAutoresizingMask = 1L
let _NSTableColumnUserResizingMask = 2L


class virtual methods = object
  inherit Im_NSTableColumn.methods
end

class t = fun (r :[`NSTableColumn] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTableColumn *)
let c = Classes.find "NSTableColumn"
let _new()= (Objc.objcnew c : [`NSTableColumn] id)
let alloc() = (Objc.objcalloc c : [`NSTableColumn] id)
