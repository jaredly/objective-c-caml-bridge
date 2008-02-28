(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSXMLElement] id) -> object
  inherit Im_NSXMLElement.methods
  method repr = r
end

(* Class object for NSXMLElement *)
let c = Classes.find "NSXMLElement"
let _new()= (Objc.objcnew c : [`NSXMLElement] id)
let alloc() = (Objc.objcalloc c : [`NSXMLElement] id)
