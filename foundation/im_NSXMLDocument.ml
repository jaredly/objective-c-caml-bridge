(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSXMLDocument *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithXMLString_options_error  (string : [`NSString] Objc.t) (mask : int) (error : bool) =
    let sel, args = (
      Objc.arg string "initWithXMLString" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfURL_options_error  (url : [`NSURL] Objc.t) (mask : int) (error : bool) =
    let sel, args = (
      Objc.arg url "initWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithData_options_error  (data : [`NSData] Objc.t) (mask : int) (error : bool) =
    let sel, args = (
      Objc.arg data "initWithData" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithRootElement (element : [`NSXMLElement] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithRootElement:")
      [make_pointer_from_object element]) : [`NSObject] Objc.id)
  method setCharacterEncoding (encoding : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCharacterEncoding:")
      [make_pointer_from_object encoding]) : unit)
  method characterEncoding =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "characterEncoding")[])
       : [`NSString] Objc.id))
  method setVersion (version : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setVersion:")
      [make_pointer_from_object version]) : unit)
  method version =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "version")[])
       : [`NSString] Objc.id))
  method setStandalone (standalone : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setStandalone:")
      [make_bool standalone]) : unit)
  method isStandalone =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isStandalone")[])
       : bool)
  method setDocumentContentKind (kind : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDocumentContentKind:")
      [make_int kind]) : unit)
  method documentContentKind =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "documentContentKind")[])
       : int)
  method setMIMEType (_MIMEType : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMIMEType:")
      [make_pointer_from_object _MIMEType]) : unit)
  method mimeType =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "MIMEType")[])
       : [`NSString] Objc.id))
  method setDTD (documentTypeDeclaration : [`NSXMLDTD] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDTD:")
      [make_pointer_from_object documentTypeDeclaration]) : unit)
  method dtd =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "DTD")[])
       : [`NSXMLDTD] Objc.id))
  method setRootElement (root : [`NSXMLNode] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRootElement:")
      [make_pointer_from_object root]) : unit)
  method rootElement =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "rootElement")[])
       : [`NSXMLElement] Objc.id))
  method insertChild_atIndex  (child : [`NSXMLNode] Objc.t) (index : int) =
    let sel, args = (
      Objc.arg child "insertChild" make_pointer_from_object
      ++ Objc.arg index "atIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method insertChildren_atIndex  (children : [`NSArray] Objc.t) (index : int) =
    let sel, args = (
      Objc.arg children "insertChildren" make_pointer_from_object
      ++ Objc.arg index "atIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeChildAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeChildAtIndex:")
      [make_int index]) : unit)
  method setChildren (children : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setChildren:")
      [make_pointer_from_object children]) : unit)
  method addChild (child : [`NSXMLNode] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addChild:")
      [make_pointer_from_object child]) : unit)
  method replaceChildAtIndex_withNode  (index : int) (node : [`NSXMLNode] Objc.t) =
    let sel, args = (
      Objc.arg index "replaceChildAtIndex" make_int
      ++ Objc.arg node "withNode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method xmlData =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "XMLData")[])
       : [`NSData] Objc.id))
  method xmlDataWithOptions (options : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "XMLDataWithOptions:")
      [make_int options]) : [`NSData] Objc.id))
  method objectByApplyingXSLT_arguments_error  (xslt : [`NSData] Objc.t) (arguments : [`NSDictionary] Objc.t) (error : bool) =
    let sel, args = (
      Objc.arg xslt "objectByApplyingXSLT" make_pointer_from_object
      ++ Objc.arg arguments "arguments" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method objectByApplyingXSLTString_arguments_error  (xslt : [`NSString] Objc.t) (arguments : [`NSDictionary] Objc.t) (error : bool) =
    let sel, args = (
      Objc.arg xslt "objectByApplyingXSLTString" make_pointer_from_object
      ++ Objc.arg arguments "arguments" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method objectByApplyingXSLTAtURL_arguments_error  (xsltURL : [`NSURL] Objc.t) (argument : [`NSDictionary] Objc.t) (error : bool) =
    let sel, args = (
      Objc.arg xsltURL "objectByApplyingXSLTAtURL" make_pointer_from_object
      ++ Objc.arg argument "arguments" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method validateAndReturnError (error : (*pointer to pointer to NSError*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "validateAndReturnError:")
      [make_error error]) : bool)

*)
end
