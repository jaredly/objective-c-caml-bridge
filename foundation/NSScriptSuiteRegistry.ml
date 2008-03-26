(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSScriptSuiteRegistry.methods
end

class t = fun (r :[`NSScriptSuiteRegistry] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSScriptSuiteRegistry *)
let c = Classes.find "NSScriptSuiteRegistry"
let _new()= (Objc.objcnew c : [`NSScriptSuiteRegistry] id)
let alloc() = (Objc.objcalloc c : [`NSScriptSuiteRegistry] id)
let sharedScriptSuiteRegistry () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedScriptSuiteRegistry")[])
       : [`NSScriptSuiteRegistry] Objc.id))
let setSharedScriptSuiteRegistry (registry : [`NSScriptSuiteRegistry] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setSharedScriptSuiteRegistry:")
      [make_pointer_from_object registry]) : unit)
