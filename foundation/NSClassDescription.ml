(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSException


external init : unit -> unit = "caml_init_NSClassDescription"
let _ = init()
let make_NSObject_of_NSClassDescription (o : [`NSClassDescription] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSClassDescription *)
let class_NSClassDescription = object
   val repr = Classes.find "NSClassDescription"
   method _new = (Objc.objcnew repr : [`NSClassDescription] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSClassDescription] nativeNSObject)
   method registerClassDescription  ~forClass:(aClass : [`NSObject] Objc.t ) (description : [`NSClassDescription] Objc.t) =
     let sel, args = (
       Objc.arg description "registerClassDescription" make_pointer_from_object
       ++ Objc.arg aClass "forClass" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSClassDescription] Objc.nativeNSObject)
   method invalidateClassDescriptionCache =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "invalidateClassDescriptionCache:")[]) : [`NSClassDescription] Objc.nativeNSObject)
   method classDescriptionForClass (aClass : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classDescriptionForClass:")[make_pointer_from_object aClass]) : [`NSClassDescription] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSClassDescription *)
class native_NSClassDescription = fun (o : [`NSClassDescription] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSClassDescription o) as super
   method attributeKeys =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "attributeKeys:")[]) : [`NSArray] Objc.nativeNSObject)
   method toOneRelationshipKeys =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toOneRelationshipKeys:")[]) : [`NSArray] Objc.nativeNSObject)
   method toManyRelationshipKeys =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toManyRelationshipKeys:")[]) : [`NSArray] Objc.nativeNSObject)
   method inverseForRelationshipKey (relationshipKey : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "inverseForRelationshipKey:")[make_pointer_from_object relationshipKey]) : [`NSString] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSClassDescriptionPrimitives *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSClassDescriptionPrimitives *)
   method classDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classDescription:")[]) : [`NSClassDescription] Objc.nativeNSObject)
   method attributeKeys =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "attributeKeys:")[]) : [`NSArray] Objc.nativeNSObject)
   method toOneRelationshipKeys =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toOneRelationshipKeys:")[]) : [`NSArray] Objc.nativeNSObject)
   method toManyRelationshipKeys =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toManyRelationshipKeys:")[]) : [`NSArray] Objc.nativeNSObject)
   method inverseForRelationshipKey (relationshipKey : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "inverseForRelationshipKey:")[make_pointer_from_object relationshipKey]) : [`NSString] Objc.nativeNSObject)
end
