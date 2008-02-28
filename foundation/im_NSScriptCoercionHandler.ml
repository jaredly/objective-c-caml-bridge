(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSScriptCoercionHandler *)
class virtual methods = object (self)
  method virtual repr : [`NSScriptCoercionHandler] Objc.id
  method coerceValue  ~toClass:(toClass : [`NSObject] Objc.t ) (value : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg value "coerceValue" make_pointer_from_object
      ++ Objc.arg toClass "toClass" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method registerCoercer  ~selector:(selector : selector ) ~toConvertFromClass:(fromClass : [`NSObject] Objc.t ) ~toClass:(toClass : [`NSObject] Objc.t ) (coercer : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg coercer "registerCoercer" make_pointer_from_object
      ++ Objc.arg selector "selector" make_selector
      ++ Objc.arg fromClass "toConvertFromClass" make_pointer_from_object
      ++ Objc.arg toClass "toClass" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
