(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMetadataQuery.methods
end

class t = fun (r :[`NSMetadataQuery] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMetadataQuery *)
let c = Classes.find "NSMetadataQuery"
let _new()= (Objc.objcnew c : [`NSMetadataQuery] id)
let alloc() = (Objc.objcalloc c : [`NSMetadataQuery] id)
