(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSXMLParserLocatorAdditions.methods_NSXMLParser
  inherit Im_NSXMLParser.methods
end

class t = fun (r :[`NSXMLParser] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSXMLParser *)
let c = Classes.find "NSXMLParser"
let _new()= (Objc.objcnew c : [`NSXMLParser] id)
let alloc() = (Objc.objcalloc c : [`NSXMLParser] id)
(* class methods for category NSXMLParserLocatorAdditions of NSXMLParser *)
