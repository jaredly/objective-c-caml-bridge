(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSXMLParserDelegateEventAdditions of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method parserDidStartDocument (_parser : [`NSXMLParser] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "parserDidStartDocument:")
      [make_pointer_from_object _parser]) : unit)
  method parserDidEndDocument (_parser : [`NSXMLParser] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "parserDidEndDocument:")
      [make_pointer_from_object _parser]) : unit)
  method parser_foundNotationDeclarationWithName_publicID_systemID  (_parser : [`NSXMLParser] Objc.t) (name : [`NSString] Objc.t) (publicID : [`NSString] Objc.t) (systemID : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg name "foundNotationDeclarationWithName" make_pointer_from_object
      ++ Objc.arg publicID "publicID" make_pointer_from_object
      ++ Objc.arg systemID "systemID" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_foundUnparsedEntityDeclarationWithName_publicID_systemID_notationName  (_parser : [`NSXMLParser] Objc.t) (name : [`NSString] Objc.t) (publicID : [`NSString] Objc.t) (systemID : [`NSString] Objc.t) (notationName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg name "foundUnparsedEntityDeclarationWithName" make_pointer_from_object
      ++ Objc.arg publicID "publicID" make_pointer_from_object
      ++ Objc.arg systemID "systemID" make_pointer_from_object
      ++ Objc.arg notationName "notationName" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_foundAttributeDeclarationWithName_forElement_type_defaultValue  (_parser : [`NSXMLParser] Objc.t) (attributeName : [`NSString] Objc.t) (elementName : [`NSString] Objc.t) (_type : [`NSString] Objc.t) (defaultValue : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg attributeName "foundAttributeDeclarationWithName" make_pointer_from_object
      ++ Objc.arg elementName "forElement" make_pointer_from_object
      ++ Objc.arg _type "type" make_pointer_from_object
      ++ Objc.arg defaultValue "defaultValue" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_foundElementDeclarationWithName_model  (_parser : [`NSXMLParser] Objc.t) (elementName : [`NSString] Objc.t) (model : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg elementName "foundElementDeclarationWithName" make_pointer_from_object
      ++ Objc.arg model "model" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_foundInternalEntityDeclarationWithName_value  (_parser : [`NSXMLParser] Objc.t) (name : [`NSString] Objc.t) (value : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg name "foundInternalEntityDeclarationWithName" make_pointer_from_object
      ++ Objc.arg value "value" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_foundExternalEntityDeclarationWithName_publicID_systemID  (_parser : [`NSXMLParser] Objc.t) (name : [`NSString] Objc.t) (publicID : [`NSString] Objc.t) (systemID : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg name "foundExternalEntityDeclarationWithName" make_pointer_from_object
      ++ Objc.arg publicID "publicID" make_pointer_from_object
      ++ Objc.arg systemID "systemID" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_didStartElement_namespaceURI_qualifiedName_attributes  (_parser : [`NSXMLParser] Objc.t) (elementName : [`NSString] Objc.t) (namespaceURI : [`NSString] Objc.t) (qName : [`NSString] Objc.t) (attributeDict : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg elementName "didStartElement" make_pointer_from_object
      ++ Objc.arg namespaceURI "namespaceURI" make_pointer_from_object
      ++ Objc.arg qName "qualifiedName" make_pointer_from_object
      ++ Objc.arg attributeDict "attributes" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_didEndElement_namespaceURI_qualifiedName  (_parser : [`NSXMLParser] Objc.t) (elementName : [`NSString] Objc.t) (namespaceURI : [`NSString] Objc.t) (qName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg elementName "didEndElement" make_pointer_from_object
      ++ Objc.arg namespaceURI "namespaceURI" make_pointer_from_object
      ++ Objc.arg qName "qualifiedName" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_didStartMappingPrefix_toURI  (_parser : [`NSXMLParser] Objc.t) (prefix : [`NSString] Objc.t) (namespaceURI : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg prefix "didStartMappingPrefix" make_pointer_from_object
      ++ Objc.arg namespaceURI "toURI" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_didEndMappingPrefix  (_parser : [`NSXMLParser] Objc.t) (prefix : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg prefix "didEndMappingPrefix" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_foundCharacters  (_parser : [`NSXMLParser] Objc.t) (string : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg string "foundCharacters" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_foundIgnorableWhitespace  (_parser : [`NSXMLParser] Objc.t) (whitespaceString : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg whitespaceString "foundIgnorableWhitespace" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_foundProcessingInstructionWithTarget_data  (_parser : [`NSXMLParser] Objc.t) (target : [`NSString] Objc.t) (data : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg target "foundProcessingInstructionWithTarget" make_pointer_from_object
      ++ Objc.arg data "data" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_foundComment  (_parser : [`NSXMLParser] Objc.t) (comment : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg comment "foundComment" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_foundCDATA  (_parser : [`NSXMLParser] Objc.t) (_CDATABlock : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg _CDATABlock "foundCDATA" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_resolveExternalEntityName_systemID  (_parser : [`NSXMLParser] Objc.t) (name : [`NSString] Objc.t) (systemID : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg name "resolveExternalEntityName" make_pointer_from_object
      ++ Objc.arg systemID "systemID" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSData] Objc.id))
  method parser_parseErrorOccurred  (_parser : [`NSXMLParser] Objc.t) (parseError : [`NSError] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg parseError "parseErrorOccurred" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method parser_validationErrorOccurred  (_parser : [`NSXMLParser] Objc.t) (validationError : [`NSError] Objc.t) =
    let sel, args = (
      Objc.arg _parser "parser" make_pointer_from_object
      ++ Objc.arg validationError "validationErrorOccurred" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
