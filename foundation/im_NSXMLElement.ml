(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSXMLElement *)
class virtual methods = object (self)
  method virtual repr : [`NSXMLElement] Objc.id
  (* skipping selector initWithName *)
  method initWithName  ?l_URI:(_URI : [`NSString] Objc.t option) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "initWithName" make_pointer_from_object
      ++ Objc.opt_arg _URI "l_URI" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector initWithName:stringValue *)
  method initWithXMLString  ~error:(error : bool ) (string : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg string "initWithXMLString" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method elementsForName (name : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "elementsForName:")
      [make_pointer_from_object name]) : [`NSArray] Objc.id))
  method elementsForLocalName  ~l_URI:(_URI : [`NSString] Objc.t ) (localName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg localName "elementsForLocalName" make_pointer_from_object
      ++ Objc.arg _URI "l_URI" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
  method addAttribute (attribute : [`NSXMLNode] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addAttribute:")
      [make_pointer_from_object attribute]) : unit)
  method removeAttributeForName (name : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeAttributeForName:")
      [make_pointer_from_object name]) : unit)
  method setAttributes (attributes : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributes:")
      [make_pointer_from_object attributes]) : unit)
  method setAttributesAsDictionary (attributes : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributesAsDictionary:")
      [make_pointer_from_object attributes]) : unit)
  method attributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributes")[])
       : [`NSArray] Objc.id))
  method attributeForName (name : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributeForName:")
      [make_pointer_from_object name]) : [`NSXMLNode] Objc.id))
  method attributeForLocalName  ~l_URI:(_URI : [`NSString] Objc.t ) (localName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg localName "attributeForLocalName" make_pointer_from_object
      ++ Objc.arg _URI "l_URI" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSXMLNode] Objc.id))
  method addNamespace (aNamespace : [`NSXMLNode] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addNamespace:")
      [make_pointer_from_object aNamespace]) : unit)
  method removeNamespaceForPrefix (name : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeNamespaceForPrefix:")
      [make_pointer_from_object name]) : unit)
  method setNamespaces (namespaces : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNamespaces:")
      [make_pointer_from_object namespaces]) : unit)
  method namespaces =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "namespaces")[])
       : [`NSArray] Objc.id))
  method namespaceForPrefix (name : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "namespaceForPrefix:")
      [make_pointer_from_object name]) : [`NSXMLNode] Objc.id))
  method resolveNamespaceForName (name : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "resolveNamespaceForName:")
      [make_pointer_from_object name]) : [`NSXMLNode] Objc.id))
  method resolvePrefixForNamespaceURI (namespaceURI : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "resolvePrefixForNamespaceURI:")
      [make_pointer_from_object namespaceURI]) : [`NSString] Objc.id))
  method insertChild  ~atIndex:(index : int ) (child : [`NSXMLNode] Objc.t) =
    let sel, args = (
      Objc.arg child "insertChild" make_pointer_from_object
      ++ Objc.arg index "atIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method insertChildren  ~atIndex:(index : int ) (children : [`NSArray] Objc.t) =
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
  method replaceChildAtIndex  ~withNode:(node : [`NSXMLNode] Objc.t ) (index : int) =
    let sel, args = (
      Objc.arg index "replaceChildAtIndex" make_int
      ++ Objc.arg node "withNode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method normalizeAdjacentTextNodesPreservingCDATA (preserve : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "normalizeAdjacentTextNodesPreservingCDATA:")
      [make_bool preserve]) : unit)
end
