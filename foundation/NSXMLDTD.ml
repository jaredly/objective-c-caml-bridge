(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSXMLDTD.methods
end

class t = fun (r :[`NSXMLDTD] id) -> object
  inherit methods
  inherit NSXMLNode.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSXMLDTD *)
let c = Classes.find "NSXMLDTD"
let _new()= (Objc.objcnew c : [`NSXMLDTD] id)
let alloc() = (Objc.objcalloc c : [`NSXMLDTD] id)
let predefinedEntityDeclarationForName (name : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "predefinedEntityDeclarationForName:")
      [make_pointer_from_object name]) : [`NSXMLDTDNode] Objc.id))
