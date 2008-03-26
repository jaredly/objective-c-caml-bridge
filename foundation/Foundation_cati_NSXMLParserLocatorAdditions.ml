(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSXMLParserLocatorAdditions of NSXMLParser *)
class virtual methods_NSXMLParser = object (self)
  method virtual repr : [`NSObject] Objc.id
  method publicID =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "publicID")[])
       : [`NSString] Objc.id))
  method systemID =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "systemID")[])
       : [`NSString] Objc.id))
  method lineNumber =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "lineNumber")[])
       : int)
  method columnNumber =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "columnNumber")[])
       : int)
end
