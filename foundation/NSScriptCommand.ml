(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSScriptCommand"
let _ = init()
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


let make_NSObject_of_NSScriptCommand (o : [`NSScriptCommand] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSScriptCommand *)
let class_NSScriptCommand = object
   val repr = Classes.find "NSScriptCommand"
   method _new = (Objc.objcnew repr : [`NSScriptCommand] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSScriptCommand] nativeNSObject)
   method currentCommand =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "currentCommand:")[]) : [`NSScriptCommand] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSScriptCommand *)
class native_NSScriptCommand = fun (o : [`NSScriptCommand] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSScriptCommand o) as super
   method initWithCommandDescription (commandDef : [`NSScriptCommandDescription] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithCommandDescription:")[make_pointer_from_object commandDef]) : [`NSObject] Objc.nativeNSObject)
   method commandDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "commandDescription:")[]) : [`NSScriptCommandDescription] Objc.nativeNSObject)
   method setDirectParameter (directParameter : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDirectParameter:")[make_pointer_from_object directParameter]) : unit)
   method directParameter =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "directParameter:")[]) : [`NSObject] Objc.nativeNSObject)
   method setReceiversSpecifier (receiversRef : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setReceiversSpecifier:")[make_pointer_from_object receiversRef]) : unit)
   method receiversSpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "receiversSpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
   method evaluatedReceivers =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "evaluatedReceivers:")[]) : [`NSObject] Objc.nativeNSObject)
   method setArguments (args : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setArguments:")[make_pointer_from_object args]) : unit)
   method arguments =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "arguments:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method evaluatedArguments =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "evaluatedArguments:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method isWellFormed =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isWellFormed:")[]) : bool)
   method performDefaultImplementation =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "performDefaultImplementation:")[]) : [`NSObject] Objc.nativeNSObject)
   method executeCommand =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "executeCommand:")[]) : [`NSObject] Objc.nativeNSObject)
   method setScriptErrorNumber (errorNumber : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setScriptErrorNumber:")[make_int errorNumber]) : unit)
   method scriptErrorNumber =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "scriptErrorNumber:")[]) : int)
   method setScriptErrorString (errorString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setScriptErrorString:")[make_pointer_from_object errorString]) : unit)
   method scriptErrorString =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "scriptErrorString:")[]) : [`NSString] Objc.nativeNSObject)
   method appleEvent =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "appleEvent:")[]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
   method suspendExecution =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "suspendExecution:")[]) : unit)
   method resumeExecutionWithResult (result : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "resumeExecutionWithResult:")[make_pointer_from_object result]) : unit)
end
