(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSXMLDTDNode.methods
end

class t = fun (r :[`NSXMLDTDNode] id) -> object
  inherit methods
  inherit NSXMLNode.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSXMLDTDNode *)
let c = Classes.find "NSXMLDTDNode"
let _new()= (Objc.objcnew c : [`NSXMLDTDNode] id)
let alloc() = (Objc.objcalloc c : [`NSXMLDTDNode] id)
