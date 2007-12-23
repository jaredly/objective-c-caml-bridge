open Objc
open NSObject


external init : unit -> unit = "caml_init_NSValueTransformer"
let _ = init()
(* Class object for NSValueTransformer *)
let class_NSValueTransformer = object
   val o = Classes.find "NSValueTransformer"
   method _new = (Objc.objcnew o : [`NSValueTransformer] nativeNSObject)
   method setValueTransformer  ~forName:(name : [`NSString] Objc.t ) (transformer : [`NSValueTransformer] Objc.t) =
     let sel, args = (
       Objc.arg transformer "setValueTransformer" make_pointer_from_object
       ++ Objc.arg name "forName" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSValueTransformer] Objc.nativeNSObject)
   method valueTransformerForName (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueTransformerForName:")[make_pointer_from_object name]) : [`NSValueTransformer] Objc.nativeNSObject)
   method valueTransformerNames =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueTransformerNames:")[]) : [`NSArray] Objc.nativeNSObject)
   method transformedValueClass =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "transformedValueClass:")[]) : [`NSValueTransformer] Objc.nativeNSObject)
   method allowsReverseTransformation =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "allowsReverseTransformation:")[]) : [`NSValueTransformer] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSValueTransformer *)
class native_NSValueTransformer = fun (o : [`NSValueTransformer] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method transformedValue (value : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "transformedValue:")[make_pointer_from_object value]) : [`NSObject] Objc.nativeNSObject)
   method reverseTransformedValue (value : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "reverseTransformedValue:")[make_pointer_from_object value]) : [`NSObject] Objc.nativeNSObject)
end
