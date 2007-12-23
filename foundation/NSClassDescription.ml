open Objc
open NSObject
open NSException


external init : unit -> unit = "caml_init_NSClassDescription"
let _ = init()
(* Class object for NSClassDescription *)
let class_NSClassDescription = object
   val o = Classes.find "NSClassDescription"
   method _new = (Objc.objcnew o : [`NSClassDescription] nativeNSObject)
   method registerClassDescription  ~forClass:(aClass : [`NSObject] Objc.t ) (description : [`NSClassDescription] Objc.t) =
     let sel, args = (
       Objc.arg description "registerClassDescription" make_pointer_from_object
       ++ Objc.arg aClass "forClass" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSClassDescription] Objc.nativeNSObject)
   method invalidateClassDescriptionCache =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "invalidateClassDescriptionCache:")[]) : [`NSClassDescription] Objc.nativeNSObject)
   method classDescriptionForClass (aClass : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "classDescriptionForClass:")[make_pointer_from_object aClass]) : [`NSClassDescription] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSClassDescription *)
class native_NSClassDescription = fun (o : [`NSClassDescription] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method attributeKeys =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attributeKeys:")[]) : [`NSArray] Objc.nativeNSObject)
   method toOneRelationshipKeys =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "toOneRelationshipKeys:")[]) : [`NSArray] Objc.nativeNSObject)
   method toManyRelationshipKeys =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "toManyRelationshipKeys:")[]) : [`NSArray] Objc.nativeNSObject)
   method inverseForRelationshipKey (relationshipKey : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "inverseForRelationshipKey:")[make_pointer_from_object relationshipKey]) : [`NSString] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSClassDescriptionPrimitives *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSClassDescriptionPrimitives *)
   method classDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "classDescription:")[]) : [`NSClassDescription] Objc.nativeNSObject)
   method attributeKeys =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attributeKeys:")[]) : [`NSArray] Objc.nativeNSObject)
   method toOneRelationshipKeys =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "toOneRelationshipKeys:")[]) : [`NSArray] Objc.nativeNSObject)
   method toManyRelationshipKeys =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "toManyRelationshipKeys:")[]) : [`NSArray] Objc.nativeNSObject)
   method inverseForRelationshipKey (relationshipKey : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "inverseForRelationshipKey:")[make_pointer_from_object relationshipKey]) : [`NSString] Objc.nativeNSObject)
end
