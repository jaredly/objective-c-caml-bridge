(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSXMLNode *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithKind (kind : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithKind:")
      [make_int kind]) : [`NSObject] Objc.id)
  method initWithKind_options  (kind : int) (options : int) =
    let sel, args = (
      Objc.arg kind "initWithKind" make_int
      ++ Objc.arg options "options" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method kind =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "kind")[])
       : int)
  method setName (name : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setName:")
      [make_pointer_from_object name]) : unit)
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method setObjectValue (value : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setObjectValue:")
      [make_pointer_from_object value]) : unit)
  method objectValue =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectValue")[])
       : [`NSObject] Objc.id)
  method setStringValue (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setStringValue:")
      [make_pointer_from_object string]) : unit)
  method setStringValue_resolvingEntities  (string : [`NSString] Objc.t) (resolve : bool) =
    let sel, args = (
      Objc.arg string "setStringValue" make_pointer_from_object
      ++ Objc.arg resolve "resolvingEntities" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method stringValue =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringValue")[])
       : [`NSString] Objc.id))
  method index =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "index")[])
       : int)
  method level =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "level")[])
       : int)
  method rootDocument =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "rootDocument")[])
       : [`NSXMLDocument] Objc.id))
  method parent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "parent")[])
       : [`NSXMLNode] Objc.id))
  method childCount =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "childCount")[])
       : int)
  method children =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "children")[])
       : [`NSArray] Objc.id))
  method childAtIndex (index : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "childAtIndex:")
      [make_int index]) : [`NSXMLNode] Objc.id))
  method previousSibling =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "previousSibling")[])
       : [`NSXMLNode] Objc.id))
  method nextSibling =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "nextSibling")[])
       : [`NSXMLNode] Objc.id))
  method previousNode =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "previousNode")[])
       : [`NSXMLNode] Objc.id))
  method nextNode =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "nextNode")[])
       : [`NSXMLNode] Objc.id))
  method detach =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "detach")[])
       : unit)
  method xpath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "XPath")[])
       : [`NSString] Objc.id))
  method localName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localName")[])
       : [`NSString] Objc.id))
  method prefix =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "prefix")[])
       : [`NSString] Objc.id))
  method setURI (_URI : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setURI:")
      [make_pointer_from_object _URI]) : unit)
  method uri =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "URI")[])
       : [`NSString] Objc.id))
  method description =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "description")[])
       : [`NSString] Objc.id))
  method xmlString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "XMLString")[])
       : [`NSString] Objc.id))
  method xmlStringWithOptions (options : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "XMLStringWithOptions:")
      [make_int options]) : [`NSString] Objc.id))
  method canonicalXMLStringPreservingComments (comments : bool) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "canonicalXMLStringPreservingComments:")
      [make_bool comments]) : [`NSString] Objc.id))
  method nodesForXPath_error  (xpath : [`NSString] Objc.t) (error : bool) =
    let sel, args = (
      Objc.arg xpath "nodesForXPath" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
  method objectsForXQuery_constants_error  (xquery : [`NSString] Objc.t) (constants : [`NSDictionary] Objc.t) (error : bool) =
    let sel, args = (
      Objc.arg xquery "objectsForXQuery" make_pointer_from_object
      ++ Objc.arg constants "constants" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
  method objectsForXQuery_error  (xquery : [`NSString] Objc.t) (error : bool) =
    let sel, args = (
      Objc.arg xquery "objectsForXQuery" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
end
