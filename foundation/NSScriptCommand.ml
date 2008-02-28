(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSNoScriptError = 0L
let _NSReceiverEvaluationScriptError = 1L
let _NSKeySpecifierEvaluationScriptError = 2L
let _NSArgumentEvaluationScriptError = 3L
let _NSReceiversCantHandleCommandScriptError = 4L
let _NSRequiredArgumentsMissingScriptError = 5L
let _NSArgumentsWrongScriptError = 6L
let _NSUnknownKeyScriptError = 7L
let _NSInternalScriptError = 8L
let _NSOperationNotSupportedForKeyScriptError = 9L
let _NSCannotCreateScriptCommandError = 10L


class t = fun (r :[`NSScriptCommand] id) -> object
  inherit Im_NSScriptCommand.methods
  method repr = r
end

(* Class object for NSScriptCommand *)
let c = Classes.find "NSScriptCommand"
let _new()= (Objc.objcnew c : [`NSScriptCommand] id)
let alloc() = (Objc.objcalloc c : [`NSScriptCommand] id)
let currentCommand () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentCommand")[])
       : [`NSScriptCommand] Objc.id))
