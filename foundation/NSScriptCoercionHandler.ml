open Objc
open NSObject


external init : unit -> unit = "caml_init_NSScriptCoercionHandler"
let _ = init()
(* Class object for NSScriptCoercionHandler *)
let class_NSScriptCoercionHandler = object
   val o = Classes.find "NSScriptCoercionHandler"
   method _new = (Objc.objcnew o : [`NSScriptCoercionHandler] nativeNSObject)
   method sharedCoercionHandler =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedCoercionHandler:")[]) : [`NSScriptCoercionHandler] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSScriptCoercionHandler *)
class native_NSScriptCoercionHandler = fun (o : [`NSScriptCoercionHandler] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method coerceValue  ~toClass:(toClass : [`NSObject] Objc.t ) (value : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg value "coerceValue" make_pointer_from_object
       ++ Objc.arg toClass "toClass" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method registerCoercer  ~selector:(selector : selector ) ~toConvertFromClass:(fromClass : [`NSObject] Objc.t ) ~toClass:(toClass : [`NSObject] Objc.t ) (coercer : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg coercer "registerCoercer" make_pointer_from_object
       ++ Objc.arg selector "selector" make_selector
       ++ Objc.arg fromClass "toConvertFromClass" make_pointer_from_object
       ++ Objc.arg toClass "toClass" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
