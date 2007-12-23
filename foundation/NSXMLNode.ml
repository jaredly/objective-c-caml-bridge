open Objc
open NSObject
open NSXMLNodeOptions


external init : unit -> unit = "caml_init_NSXMLNode"
let _ = init()
(* Class object for NSXMLNode *)
let class_NSXMLNode = object
   val o = Classes.find "NSXMLNode"
   method _new = (Objc.objcnew o : [`NSXMLNode] nativeNSObject)
   method document =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "document:")[]) : [`NSXMLNode] Objc.nativeNSObject)
   method documentWithRootElement (element : [`NSXMLElement] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "documentWithRootElement:")[make_pointer_from_object element]) : [`NSXMLNode] Objc.nativeNSObject)
   (* skipping selector elementWithName *)
   (* skipping selector elementWithName:l_URI *)
   (* skipping selector elementWithName:stringValue *)
   method elementWithName  ?children:(children : [`NSArray] Objc.t option) ?attributes:(attributes : [`NSArray] Objc.t option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "elementWithName" make_pointer_from_object
       ++ Objc.opt_arg children "children" make_pointer_from_object
       ++ Objc.opt_arg attributes "attributes" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSXMLNode] Objc.nativeNSObject)
   (* skipping selector attributeWithName:stringValue *)
   method attributeWithName  ~l_URI:(_URI : [`NSString] Objc.t ) ~stringValue:(stringValue : [`NSString] Objc.t ) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "attributeWithName" make_pointer_from_object
       ++ Objc.arg _URI "l_URI" make_pointer_from_object
       ++ Objc.arg stringValue "stringValue" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSXMLNode] Objc.nativeNSObject)
   method namespaceWithName  ~stringValue:(stringValue : [`NSString] Objc.t ) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "namespaceWithName" make_pointer_from_object
       ++ Objc.arg stringValue "stringValue" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSXMLNode] Objc.nativeNSObject)
   method processingInstructionWithName  ~stringValue:(stringValue : [`NSString] Objc.t ) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "processingInstructionWithName" make_pointer_from_object
       ++ Objc.arg stringValue "stringValue" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSXMLNode] Objc.nativeNSObject)
   method commentWithStringValue (stringValue : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "commentWithStringValue:")[make_pointer_from_object stringValue]) : [`NSXMLNode] Objc.nativeNSObject)
   method textWithStringValue (stringValue : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textWithStringValue:")[make_pointer_from_object stringValue]) : [`NSXMLNode] Objc.nativeNSObject)
   method l_DTDNodeWithXMLString (string : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_DTDNodeWithXMLString:")[make_pointer_from_object string]) : [`NSXMLNode] Objc.nativeNSObject)
   method localNameForName (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localNameForName:")[make_pointer_from_object name]) : [`NSString] Objc.nativeNSObject)
   method prefixForName (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "prefixForName:")[make_pointer_from_object name]) : [`NSString] Objc.nativeNSObject)
   method predefinedNamespaceForPrefix (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "predefinedNamespaceForPrefix:")[make_pointer_from_object name]) : [`NSXMLNode] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSXMLNode *)
class native_NSXMLNode = fun (o : [`NSXMLNode] nativeNSObject) -> object (self)
   val o = o
   method o = o
   (* skipping selector initWithKind *)
   method initWithKind  ?options:(options : int option) (kind : int) =
     let sel, args = (
       Objc.arg kind "initWithKind" make_int
       ++ Objc.opt_arg options "options" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method kind =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "kind:")[]) : int)
   method setName (name : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setName:")[make_pointer_from_object name]) : unit)
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method setObjectValue (value : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setObjectValue:")[make_pointer_from_object value]) : unit)
   method objectValue =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "objectValue:")[]) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector setStringValue *)
   method setStringValue  ?resolvingEntities:(resolve : bool option) (string : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg string "setStringValue" make_pointer_from_object
       ++ Objc.opt_arg resolve "resolvingEntities" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method stringValue =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringValue:")[]) : [`NSString] Objc.nativeNSObject)
   method index =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "index:")[]) : int)
   method level =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "level:")[]) : int)
   method rootDocument =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "rootDocument:")[]) : [`NSXMLDocument] Objc.nativeNSObject)
   method parent =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "parent:")[]) : [`NSXMLNode] Objc.nativeNSObject)
   method childCount =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "childCount:")[]) : int)
   method children =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "children:")[]) : [`NSArray] Objc.nativeNSObject)
   method childAtIndex (index : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "childAtIndex:")[make_int index]) : [`NSXMLNode] Objc.nativeNSObject)
   method previousSibling =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "previousSibling:")[]) : [`NSXMLNode] Objc.nativeNSObject)
   method nextSibling =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "nextSibling:")[]) : [`NSXMLNode] Objc.nativeNSObject)
   method previousNode =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "previousNode:")[]) : [`NSXMLNode] Objc.nativeNSObject)
   method nextNode =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "nextNode:")[]) : [`NSXMLNode] Objc.nativeNSObject)
   method detach =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "detach:")[]) : unit)
   method l_XPath =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_XPath:")[]) : [`NSString] Objc.nativeNSObject)
   method localName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localName:")[]) : [`NSString] Objc.nativeNSObject)
   method prefix =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "prefix:")[]) : [`NSString] Objc.nativeNSObject)
   method setURI (_URI : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setURI:")[make_pointer_from_object _URI]) : unit)
   method l_URI =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_URI:")[]) : [`NSString] Objc.nativeNSObject)
   method description =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "description:")[]) : [`NSString] Objc.nativeNSObject)
   method l_XMLString =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_XMLString:")[]) : [`NSString] Objc.nativeNSObject)
   method l_XMLStringWithOptions (options : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_XMLStringWithOptions:")[make_int options]) : [`NSString] Objc.nativeNSObject)
   method canonicalXMLStringPreservingComments (comments : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "canonicalXMLStringPreservingComments:")[make_bool comments]) : [`NSString] Objc.nativeNSObject)
   method nodesForXPath  ~error:(error : bool ) (xpath : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg xpath "nodesForXPath" make_pointer_from_object
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSArray] Objc.nativeNSObject)
   method objectsForXQuery  ~constants:(constants : [`NSDictionary] Objc.t ) ~error:(error : bool ) (xquery : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg xquery "objectsForXQuery" make_pointer_from_object
       ++ Objc.arg constants "constants" make_pointer_from_object
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSArray] Objc.nativeNSObject)
   (* skipping selector objectsForXQuery:error *)
end
