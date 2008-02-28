(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSExistsCommand] id) -> object
  inherit Im_NSExistsCommand.methods
  method repr = r
end

(* Class object for NSExistsCommand *)
let c = Classes.find "NSExistsCommand"
let _new()= (Objc.objcnew c : [`NSExistsCommand] id)
let alloc() = (Objc.objcalloc c : [`NSExistsCommand] id)
