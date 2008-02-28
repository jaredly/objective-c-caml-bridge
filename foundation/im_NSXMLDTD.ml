(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSXMLDTD *)
class virtual methods = object (self)
  method virtual repr : [`NSXMLDTD] Objc.id
  method initWithContentsOfURL  ~options:(mask : int ) ~error:(error : bool ) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "initWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithData  ~options:(mask : int ) ~error:(error : bool ) (data : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg data "initWithData" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method setPublicID (publicID : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPublicID:")
      [make_pointer_from_object publicID]) : unit)
  method publicID =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "publicID")[])
       : [`NSString] Objc.id))
  method setSystemID (systemID : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSystemID:")
      [make_pointer_from_object systemID]) : unit)
  method systemID =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "systemID")[])
       : [`NSString] Objc.id))
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
  method entityDeclarationForName (name : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "entityDeclarationForName:")
      [make_pointer_from_object name]) : [`NSXMLDTDNode] Objc.id))
  method notationDeclarationForName (name : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "notationDeclarationForName:")
      [make_pointer_from_object name]) : [`NSXMLDTDNode] Objc.id))
  method elementDeclarationForName (name : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "elementDeclarationForName:")
      [make_pointer_from_object name]) : [`NSXMLDTDNode] Objc.id))
  method attributeDeclarationForName  ~elementName:(elementName : [`NSString] Objc.t ) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "attributeDeclarationForName" make_pointer_from_object
      ++ Objc.arg elementName "elementName" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSXMLDTDNode] Objc.id))
end
