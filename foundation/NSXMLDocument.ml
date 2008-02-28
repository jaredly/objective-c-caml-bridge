(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSXMLDocument] id) -> object
  inherit Im_NSXMLDocument.methods
  method repr = r
end

(* Class object for NSXMLDocument *)
let c = Classes.find "NSXMLDocument"
let _new()= (Objc.objcnew c : [`NSXMLDocument] id)
let alloc() = (Objc.objcalloc c : [`NSXMLDocument] id)
let replacementClassForClass (cls : [`NSObject] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "replacementClassForClass:")
      [make_pointer_from_object cls]) : [`NSXMLDocument] Objc.id))
