(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSValueTransformer"
let _ = init()
let make_NSObject_of_NSValueTransformer (o : [`NSValueTransformer] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSValueTransformer *)
let class_NSValueTransformer = object
   val repr = Classes.find "NSValueTransformer"
   method _new = (Objc.objcnew repr : [`NSValueTransformer] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSValueTransformer] nativeNSObject)
   method setValueTransformer  ~forName:(name : [`NSString] Objc.t ) (transformer : [`NSValueTransformer] Objc.t) =
     let sel, args = (
       Objc.arg transformer "setValueTransformer" make_pointer_from_object
       ++ Objc.arg name "forName" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSValueTransformer] Objc.nativeNSObject)
   method valueTransformerForName (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "valueTransformerForName:")[make_pointer_from_object name]) : [`NSValueTransformer] Objc.nativeNSObject)
   method valueTransformerNames =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "valueTransformerNames:")[]) : [`NSArray] Objc.nativeNSObject)
   method transformedValueClass =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "transformedValueClass:")[]) : [`NSValueTransformer] Objc.nativeNSObject)
   method allowsReverseTransformation =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "allowsReverseTransformation:")[]) : [`NSValueTransformer] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSValueTransformer *)
class native_NSValueTransformer = fun (o : [`NSValueTransformer] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSValueTransformer o) as super
   method transformedValue (value : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "transformedValue:")[make_pointer_from_object value]) : [`NSObject] Objc.nativeNSObject)
   method reverseTransformedValue (value : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "reverseTransformedValue:")[make_pointer_from_object value]) : [`NSObject] Objc.nativeNSObject)
end
