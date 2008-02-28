(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMetadataItem] id) -> object
  inherit Im_NSMetadataItem.methods
  method repr = r
end

(* Class object for NSMetadataItem *)
let c = Classes.find "NSMetadataItem"
let _new()= (Objc.objcnew c : [`NSMetadataItem] id)
let alloc() = (Objc.objcalloc c : [`NSMetadataItem] id)
