open Objc
open NSObject


external init : unit -> unit = "caml_init_NSXMLParser"
let _ = init()
(* Class object for NSXMLParser *)
let class_NSXMLParser = object
   val o = Classes.find "NSXMLParser"
   method _new = (Objc.objcnew o : [`NSXMLParser] nativeNSObject)
(* methods for category NSXMLParserLocatorAdditions *)
end
(* Encapsulation for native instance of NSXMLParser *)
class native_NSXMLParser = fun (o : [`NSXMLParser] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSXMLParserLocatorAdditions *)
   method publicID =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "publicID:")[]) : [`NSString] Objc.nativeNSObject)
   method systemID =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "systemID:")[]) : [`NSString] Objc.nativeNSObject)
   method lineNumber =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "lineNumber:")[]) : int)
   method columnNumber =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "columnNumber:")[]) : int)
   method initWithContentsOfURL (url : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithContentsOfURL:")[make_pointer_from_object url]) : [`NSObject] Objc.nativeNSObject)
   method initWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithData:")[make_pointer_from_object data]) : [`NSObject] Objc.nativeNSObject)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (delegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object delegate]) : unit)
   method setShouldProcessNamespaces (shouldProcessNamespaces : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setShouldProcessNamespaces:")[make_bool shouldProcessNamespaces]) : unit)
   method setShouldReportNamespacePrefixes (shouldReportNamespacePrefixes : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setShouldReportNamespacePrefixes:")[make_bool shouldReportNamespacePrefixes]) : unit)
   method setShouldResolveExternalEntities (shouldResolveExternalEntities : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setShouldResolveExternalEntities:")[make_bool shouldResolveExternalEntities]) : unit)
   method shouldProcessNamespaces =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "shouldProcessNamespaces:")[]) : bool)
   method shouldReportNamespacePrefixes =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "shouldReportNamespacePrefixes:")[]) : bool)
   method shouldResolveExternalEntities =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "shouldResolveExternalEntities:")[]) : bool)
   method parse =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "parse:")[]) : bool)
   method abortParsing =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "abortParsing:")[]) : unit)
   method parserError =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "parserError:")[]) : [`NSError] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSXMLParserDelegateEventAdditions *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSXMLParserDelegateEventAdditions *)
   method parserDidStartDocument (_parser : [`NSXMLParser] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "parserDidStartDocument:")[make_pointer_from_object _parser]) : unit)
   method parserDidEndDocument (_parser : [`NSXMLParser] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "parserDidEndDocument:")[make_pointer_from_object _parser]) : unit)
   (* skipping selector l_parser:foundNotationDeclarationWithName:publicID:systemID *)
   method l_parser  ?foundUnparsedEntityDeclarationWithName:(name : [`NSString] Objc.t option) ?publicID:(publicID : [`NSString] Objc.t option) ?systemID:(systemID : [`NSString] Objc.t option) ?notationName:(notationName : [`NSString] Objc.t option) (_parser : [`NSXMLParser] Objc.t) =
     let sel, args = (
       Objc.arg _parser "l_parser" make_pointer_from_object
       ++ Objc.opt_arg name "foundUnparsedEntityDeclarationWithName" make_pointer_from_object
       ++ Objc.opt_arg publicID "publicID" make_pointer_from_object
       ++ Objc.opt_arg systemID "systemID" make_pointer_from_object
       ++ Objc.opt_arg notationName "notationName" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   (* skipping selector l_parser:foundAttributeDeclarationWithName:forElement:l_type:defaultValue *)
   (* skipping selector l_parser:foundElementDeclarationWithName:model *)
   (* skipping selector l_parser:foundInternalEntityDeclarationWithName:value *)
   (* skipping selector l_parser:foundExternalEntityDeclarationWithName:publicID:systemID *)
   (* skipping selector l_parser:didStartElement:namespaceURI:qualifiedName:attributes *)
   (* skipping selector l_parser:didEndElement:namespaceURI:qualifiedName *)
   (* skipping selector l_parser:didStartMappingPrefix:toURI *)
   (* skipping selector l_parser:didEndMappingPrefix *)
   (* skipping selector l_parser:foundCharacters *)
   (* skipping selector l_parser:foundIgnorableWhitespace *)
   (* skipping selector l_parser:foundProcessingInstructionWithTarget:data *)
   (* skipping selector l_parser:foundComment *)
   (* skipping selector l_parser:foundCDATA *)
   (* skipping selector l_parser:resolveExternalEntityName:systemID *)
   (* skipping selector l_parser:parseErrorOccurred *)
   (* skipping selector l_parser:validationErrorOccurred *)
end
