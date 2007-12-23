open Objc
open NSObject


external init : unit -> unit = "caml_init_NSExpression"
let _ = init()
(* Class object for NSExpression *)
let class_NSExpression = object
   val o = Classes.find "NSExpression"
   method _new = (Objc.objcnew o : [`NSExpression] nativeNSObject)
   method expressionForConstantValue (obj : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "expressionForConstantValue:")[make_pointer_from_object obj]) : [`NSExpression] Objc.nativeNSObject)
   method expressionForEvaluatedObject =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "expressionForEvaluatedObject:")[]) : [`NSExpression] Objc.nativeNSObject)
   method expressionForVariable (string : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "expressionForVariable:")[make_pointer_from_object string]) : [`NSExpression] Objc.nativeNSObject)
   method expressionForKeyPath (keyPath : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "expressionForKeyPath:")[make_pointer_from_object keyPath]) : [`NSExpression] Objc.nativeNSObject)
   method expressionForFunction  ~arguments:(parameters : [`NSArray] Objc.t ) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "expressionForFunction" make_pointer_from_object
       ++ Objc.arg parameters "arguments" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSExpression] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSExpression *)
class native_NSExpression = fun (o : [`NSExpression] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithExpressionType (_type : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithExpressionType:")[make_int _type]) : [`NSObject] Objc.nativeNSObject)
   method expressionType =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "expressionType:")[]) : int)
   method constantValue =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "constantValue:")[]) : [`NSObject] Objc.nativeNSObject)
   method keyPath =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "keyPath:")[]) : [`NSString] Objc.nativeNSObject)
   method getfunction =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "function:")[]) : [`NSString] Objc.nativeNSObject)
   method variable =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "variable:")[]) : [`NSString] Objc.nativeNSObject)
   method operand =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "operand:")[]) : [`NSExpression] Objc.nativeNSObject)
   method arguments =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "arguments:")[]) : [`NSArray] Objc.nativeNSObject)
   method expressionValueWithObject  ~context:(context : [`NSMutableDictionary] Objc.t ) (_object : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg _object "expressionValueWithObject" make_pointer_from_object
       ++ Objc.arg context "context" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
end
