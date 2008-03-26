(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMetadataItem.methods
end

class t = fun (r :[`NSMetadataItem] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMetadataItem *)
let c = Classes.find "NSMetadataItem"
let _new()= (Objc.objcnew c : [`NSMetadataItem] id)
let alloc() = (Objc.objcalloc c : [`NSMetadataItem] id)
