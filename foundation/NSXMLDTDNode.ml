(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSXMLDTDNode] id) -> object
  inherit Im_NSXMLDTDNode.methods
  method repr = r
end

(* Class object for NSXMLDTDNode *)
let c = Classes.find "NSXMLDTDNode"
let _new()= (Objc.objcnew c : [`NSXMLDTDNode] id)
let alloc() = (Objc.objcalloc c : [`NSXMLDTDNode] id)
