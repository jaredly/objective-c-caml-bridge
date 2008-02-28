(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMetadataQueryResultGroup] id) -> object
  inherit Im_NSMetadataQueryResultGroup.methods
  method repr = r
end

(* Class object for NSMetadataQueryResultGroup *)
let c = Classes.find "NSMetadataQueryResultGroup"
let _new()= (Objc.objcnew c : [`NSMetadataQueryResultGroup] id)
let alloc() = (Objc.objcalloc c : [`NSMetadataQueryResultGroup] id)
