(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMetadataQuery] id) -> object
  inherit Im_NSMetadataQuery.methods
  method repr = r
end

(* Class object for NSMetadataQuery *)
let c = Classes.find "NSMetadataQuery"
let _new()= (Objc.objcnew c : [`NSMetadataQuery] id)
let alloc() = (Objc.objcalloc c : [`NSMetadataQuery] id)
