(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSMetadataQueryDelegate of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method metadataQuery_replacementObjectForResultObject  (query : [`NSMetadataQuery] Objc.t) (result : [`NSMetadataItem] Objc.t) =
    let sel, args = (
      Objc.arg query "metadataQuery" make_pointer_from_object
      ++ Objc.arg result "replacementObjectForResultObject" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method metadataQuery_replacementValueForAttribute_value  (query : [`NSMetadataQuery] Objc.t) (attrName : [`NSString] Objc.t) (attrValue : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg query "metadataQuery" make_pointer_from_object
      ++ Objc.arg attrName "replacementValueForAttribute" make_pointer_from_object
      ++ Objc.arg attrValue "value" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
