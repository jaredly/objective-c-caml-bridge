(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMetadataQueryAttributeValueTuple.methods
end

class t = fun (r :[`NSMetadataQueryAttributeValueTuple] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMetadataQueryAttributeValueTuple *)
let c = Classes.find "NSMetadataQueryAttributeValueTuple"
let _new()= (Objc.objcnew c : [`NSMetadataQueryAttributeValueTuple] id)
let alloc() = (Objc.objcalloc c : [`NSMetadataQueryAttributeValueTuple] id)
