(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSXMLNode.methods
end

class t = fun (r :[`NSXMLNode] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSXMLNode *)
let c = Classes.find "NSXMLNode"
let _new()= (Objc.objcnew c : [`NSXMLNode] id)
let alloc() = (Objc.objcalloc c : [`NSXMLNode] id)
let document () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "document")[])
       : [`NSXMLNode] Objc.id))
let documentWithRootElement (element : [`NSXMLElement] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "documentWithRootElement:")
      [make_pointer_from_object element]) : [`NSXMLNode] Objc.id))
let elementWithName (name : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "elementWithName:")
      [make_pointer_from_object name]) : [`NSXMLNode] Objc.id))
let elementWithName_URI  (name : [`NSString] Objc.t) (_URI : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "elementWithName" make_pointer_from_object
      ++ Objc.arg _URI "URI" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSXMLNode] Objc.id))
let elementWithName_stringValue  (name : [`NSString] Objc.t) (string : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "elementWithName" make_pointer_from_object
      ++ Objc.arg string "stringValue" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSXMLNode] Objc.id))
let elementWithName_children_attributes  (name : [`NSString] Objc.t) (children : [`NSArray] Objc.t) (attributes : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg name "elementWithName" make_pointer_from_object
      ++ Objc.arg children "children" make_pointer_from_object
      ++ Objc.arg attributes "attributes" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSXMLNode] Objc.id))
let attributeWithName_stringValue  (name : [`NSString] Objc.t) (stringValue : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "attributeWithName" make_pointer_from_object
      ++ Objc.arg stringValue "stringValue" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSXMLNode] Objc.id))
let attributeWithName_URI_stringValue  (name : [`NSString] Objc.t) (_URI : [`NSString] Objc.t) (stringValue : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "attributeWithName" make_pointer_from_object
      ++ Objc.arg _URI "URI" make_pointer_from_object
      ++ Objc.arg stringValue "stringValue" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSXMLNode] Objc.id))
let namespaceWithName_stringValue  (name : [`NSString] Objc.t) (stringValue : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "namespaceWithName" make_pointer_from_object
      ++ Objc.arg stringValue "stringValue" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSXMLNode] Objc.id))
let processingInstructionWithName_stringValue  (name : [`NSString] Objc.t) (stringValue : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "processingInstructionWithName" make_pointer_from_object
      ++ Objc.arg stringValue "stringValue" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSXMLNode] Objc.id))
let commentWithStringValue (stringValue : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "commentWithStringValue:")
      [make_pointer_from_object stringValue]) : [`NSXMLNode] Objc.id))
let textWithStringValue (stringValue : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "textWithStringValue:")
      [make_pointer_from_object stringValue]) : [`NSXMLNode] Objc.id))
let dtdNodeWithXMLString (string : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "DTDNodeWithXMLString:")
      [make_pointer_from_object string]) : [`NSXMLNode] Objc.id))
let localNameForName (name : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "localNameForName:")
      [make_pointer_from_object name]) : [`NSString] Objc.id))
let prefixForName (name : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "prefixForName:")
      [make_pointer_from_object name]) : [`NSString] Objc.id))
let predefinedNamespaceForPrefix (name : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "predefinedNamespaceForPrefix:")
      [make_pointer_from_object name]) : [`NSXMLNode] Objc.id))
