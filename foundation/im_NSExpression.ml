(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSExpression *)
class virtual methods = object (self)
  method virtual repr : [`NSExpression] Objc.id
  method initWithExpressionType (_type : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithExpressionType:")
      [make_int _type]) : [`NSObject] Objc.id)
  method expressionType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "expressionType")[])
       : int)
  method constantValue =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "constantValue")[])
       : [`NSObject] Objc.id)
  method keyPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keyPath")[])
       : [`NSString] Objc.id))
  method getfunction =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "function")[])
       : [`NSString] Objc.id))
  method variable =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "variable")[])
       : [`NSString] Objc.id))
  method operand =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "operand")[])
       : [`NSExpression] Objc.id))
  method arguments =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "arguments")[])
       : [`NSArray] Objc.id))
  method expressionValueWithObject  ~context:(context : [`NSMutableDictionary] Objc.t ) (_object : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg _object "expressionValueWithObject" make_pointer_from_object
      ++ Objc.arg context "context" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
