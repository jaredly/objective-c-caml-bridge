(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSpecifierTest *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithObjectSpecifier_comparisonOperator_testObject  (obj1 : [`NSScriptObjectSpecifier] Objc.t) (compOp : int) (obj2 : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg obj1 "initWithObjectSpecifier" make_pointer_from_object
      ++ Objc.arg compOp "comparisonOperator" make_int
      ++ Objc.arg obj2 "testObject" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
