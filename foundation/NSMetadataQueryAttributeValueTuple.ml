(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMetadataQueryAttributeValueTuple] id) -> object
  inherit Im_NSMetadataQueryAttributeValueTuple.methods
  method repr = r
end

(* Class object for NSMetadataQueryAttributeValueTuple *)
let c = Classes.find "NSMetadataQueryAttributeValueTuple"
let _new()= (Objc.objcnew c : [`NSMetadataQueryAttributeValueTuple] id)
let alloc() = (Objc.objcalloc c : [`NSMetadataQueryAttributeValueTuple] id)
