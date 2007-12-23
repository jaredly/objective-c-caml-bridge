open Objc
open NSXMLNode


external init : unit -> unit = "caml_init_NSXMLDocument"
let _ = init()
(* Class object for NSXMLDocument *)
let class_NSXMLDocument = object
   val o = Classes.find "NSXMLDocument"
   method _new = (Objc.objcnew o : [`NSXMLDocument] nativeNSObject)
   method replacementClassForClass (cls : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "replacementClassForClass:")[make_pointer_from_object cls]) : [`NSXMLDocument] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSXMLDocument *)
class native_NSXMLDocument = fun (o : [`NSXMLDocument] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithXMLString  ~options:(mask : int ) ~error:(error : bool ) (string : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg string "initWithXMLString" make_pointer_from_object
       ++ Objc.arg mask "options" make_int
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithContentsOfURL  ~options:(mask : int ) ~error:(error : bool ) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "initWithContentsOfURL" make_pointer_from_object
       ++ Objc.arg mask "options" make_int
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithData  ~options:(mask : int ) ~error:(error : bool ) (data : [`NSData] Objc.t) =
     let sel, args = (
       Objc.arg data "initWithData" make_pointer_from_object
       ++ Objc.arg mask "options" make_int
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithRootElement (element : [`NSXMLElement] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithRootElement:")[make_pointer_from_object element]) : [`NSObject] Objc.nativeNSObject)
   method setCharacterEncoding (encoding : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCharacterEncoding:")[make_pointer_from_object encoding]) : unit)
   method characterEncoding =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "characterEncoding:")[]) : [`NSString] Objc.nativeNSObject)
   method setVersion (version : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setVersion:")[make_pointer_from_object version]) : unit)
   method version =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "version:")[]) : [`NSString] Objc.nativeNSObject)
   method setStandalone (standalone : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setStandalone:")[make_bool standalone]) : unit)
   method isStandalone =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isStandalone:")[]) : bool)
   method setDocumentContentKind (kind : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDocumentContentKind:")[make_int kind]) : unit)
   method documentContentKind =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "documentContentKind:")[]) : int)
   method setMIMEType (_MIMEType : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMIMEType:")[make_pointer_from_object _MIMEType]) : unit)
   method l_MIMEType =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_MIMEType:")[]) : [`NSString] Objc.nativeNSObject)
   method setDTD (documentTypeDeclaration : [`NSXMLDTD] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDTD:")[make_pointer_from_object documentTypeDeclaration]) : unit)
   method l_DTD =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_DTD:")[]) : [`NSXMLDTD] Objc.nativeNSObject)
   method setRootElement (root : [`NSXMLNode] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRootElement:")[make_pointer_from_object root]) : unit)
   method rootElement =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "rootElement:")[]) : [`NSXMLElement] Objc.nativeNSObject)
   method insertChild  ~atIndex:(index : int ) (child : [`NSXMLNode] Objc.t) =
     let sel, args = (
       Objc.arg child "insertChild" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method insertChildren  ~atIndex:(index : int ) (children : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg children "insertChildren" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method removeChildAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeChildAtIndex:")[make_int index]) : unit)
   method setChildren (children : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setChildren:")[make_pointer_from_object children]) : unit)
   method addChild (child : [`NSXMLNode] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addChild:")[make_pointer_from_object child]) : unit)
   method replaceChildAtIndex  ~withNode:(node : [`NSXMLNode] Objc.t ) (index : int) =
     let sel, args = (
       Objc.arg index "replaceChildAtIndex" make_int
       ++ Objc.arg node "withNode" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method l_XMLData =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_XMLData:")[]) : [`NSData] Objc.nativeNSObject)
   method l_XMLDataWithOptions (options : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_XMLDataWithOptions:")[make_int options]) : [`NSData] Objc.nativeNSObject)
   method objectByApplyingXSLT  ~arguments:(arguments : [`NSDictionary] Objc.t ) ~error:(error : bool ) (xslt : [`NSData] Objc.t) =
     let sel, args = (
       Objc.arg xslt "objectByApplyingXSLT" make_pointer_from_object
       ++ Objc.arg arguments "arguments" make_pointer_from_object
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method objectByApplyingXSLTString  ~arguments:(arguments : [`NSDictionary] Objc.t ) ~error:(error : bool ) (xslt : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg xslt "objectByApplyingXSLTString" make_pointer_from_object
       ++ Objc.arg arguments "arguments" make_pointer_from_object
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method objectByApplyingXSLTAtURL  ~arguments:(argument : [`NSDictionary] Objc.t ) ~error:(error : bool ) (xsltURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg xsltURL "objectByApplyingXSLTAtURL" make_pointer_from_object
       ++ Objc.arg argument "arguments" make_pointer_from_object
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method validateAndReturnError (error : (*pointer to pointer to NSError*) unsupported) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "validateAndReturnError:")[make_error error]) : bool)

*)
end
