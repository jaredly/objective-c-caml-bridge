(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSLogicalTest *)
class virtual methods = object (self)
  method virtual repr : [`NSLogicalTest] Objc.id
  method initAndTestWithTests (subTests : [`NSArray] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initAndTestWithTests:")
      [make_pointer_from_object subTests]) : [`NSObject] Objc.id)
  method initOrTestWithTests (subTests : [`NSArray] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initOrTestWithTests:")
      [make_pointer_from_object subTests]) : [`NSObject] Objc.id)
  method initNotTestWithTest (subTest : [`NSScriptWhoseTest] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initNotTestWithTest:")
      [make_pointer_from_object subTest]) : [`NSObject] Objc.id)
end
