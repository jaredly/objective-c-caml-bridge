(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMetadataQueryResultGroup.methods
end

class t = fun (r :[`NSMetadataQueryResultGroup] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMetadataQueryResultGroup *)
let c = Classes.find "NSMetadataQueryResultGroup"
let _new()= (Objc.objcnew c : [`NSMetadataQueryResultGroup] id)
let alloc() = (Objc.objcalloc c : [`NSMetadataQueryResultGroup] id)
