(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSXMLParser] id) -> object
  inherit Cati_NSXMLParserLocatorAdditions.methods_NSXMLParser
  inherit Im_NSXMLParser.methods
  method repr = r
end

(* Class object for NSXMLParser *)
let c = Classes.find "NSXMLParser"
let _new()= (Objc.objcnew c : [`NSXMLParser] id)
let alloc() = (Objc.objcalloc c : [`NSXMLParser] id)
(* class methods for category NSXMLParserLocatorAdditions of NSXMLParser *)
