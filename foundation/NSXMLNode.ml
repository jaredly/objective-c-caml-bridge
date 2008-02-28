(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSXMLNode] id) -> object
  inherit Im_NSXMLNode.methods
  method repr = r
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
  (* skipping selector elementWithName *)
  (* skipping selector elementWithName:l_URI *)
  (* skipping selector elementWithName:stringValue *)
let elementWithName  ?children:(children : [`NSArray] Objc.t option) ?attributes:(attributes : [`NSArray] Objc.t option) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "elementWithName" make_pointer_from_object
      ++ Objc.opt_arg children "children" make_pointer_from_object
      ++ Objc.opt_arg attributes "attributes" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSXMLNode] Objc.id))
  (* skipping selector attributeWithName:stringValue *)
let attributeWithName  ~l_URI:(_URI : [`NSString] Objc.t ) ~stringValue:(stringValue : [`NSString] Objc.t ) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "attributeWithName" make_pointer_from_object
      ++ Objc.arg _URI "l_URI" make_pointer_from_object
      ++ Objc.arg stringValue "stringValue" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSXMLNode] Objc.id))
let namespaceWithName  ~stringValue:(stringValue : [`NSString] Objc.t ) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "namespaceWithName" make_pointer_from_object
      ++ Objc.arg stringValue "stringValue" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSXMLNode] Objc.id))
let processingInstructionWithName  ~stringValue:(stringValue : [`NSString] Objc.t ) (name : [`NSString] Objc.t) =
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
let l_DTDNodeWithXMLString (string : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "l_DTDNodeWithXMLString:")
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
