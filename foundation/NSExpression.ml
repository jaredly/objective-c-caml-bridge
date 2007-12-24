(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSExpression"
let _ = init()
let make_NSObject_of_NSExpression (o : [`NSExpression] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSExpression *)
let class_NSExpression = object
   val repr = Classes.find "NSExpression"
   method _new = (Objc.objcnew repr : [`NSExpression] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSExpression] nativeNSObject)
   method expressionForConstantValue (obj : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "expressionForConstantValue:")[make_pointer_from_object obj]) : [`NSExpression] Objc.nativeNSObject)
   method expressionForEvaluatedObject =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "expressionForEvaluatedObject:")[]) : [`NSExpression] Objc.nativeNSObject)
   method expressionForVariable (string : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "expressionForVariable:")[make_pointer_from_object string]) : [`NSExpression] Objc.nativeNSObject)
   method expressionForKeyPath (keyPath : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "expressionForKeyPath:")[make_pointer_from_object keyPath]) : [`NSExpression] Objc.nativeNSObject)
   method expressionForFunction  ~arguments:(parameters : [`NSArray] Objc.t ) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "expressionForFunction" make_pointer_from_object
       ++ Objc.arg parameters "arguments" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSExpression] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSExpression *)
class native_NSExpression = fun (o : [`NSExpression] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSExpression o) as super
   method initWithExpressionType (_type : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithExpressionType:")[make_int _type]) : [`NSObject] Objc.nativeNSObject)
   method expressionType =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "expressionType:")[]) : int)
   method constantValue =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "constantValue:")[]) : [`NSObject] Objc.nativeNSObject)
   method keyPath =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "keyPath:")[]) : [`NSString] Objc.nativeNSObject)
   method getfunction =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "function:")[]) : [`NSString] Objc.nativeNSObject)
   method variable =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "variable:")[]) : [`NSString] Objc.nativeNSObject)
   method operand =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "operand:")[]) : [`NSExpression] Objc.nativeNSObject)
   method arguments =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "arguments:")[]) : [`NSArray] Objc.nativeNSObject)
   method expressionValueWithObject  ~context:(context : [`NSMutableDictionary] Objc.t ) (_object : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg _object "expressionValueWithObject" make_pointer_from_object
       ++ Objc.arg context "context" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
end
