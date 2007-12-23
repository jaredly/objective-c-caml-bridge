open Objc
open NSObject


external init : unit -> unit = "caml_init_NSScriptCommand"
let _ = init()
(* Class object for NSScriptCommand *)
let class_NSScriptCommand = object
   val o = Classes.find "NSScriptCommand"
   method _new = (Objc.objcnew o : [`NSScriptCommand] nativeNSObject)
   method currentCommand =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentCommand:")[]) : [`NSScriptCommand] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSScriptCommand *)
class native_NSScriptCommand = fun (o : [`NSScriptCommand] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithCommandDescription (commandDef : [`NSScriptCommandDescription] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithCommandDescription:")[make_pointer_from_object commandDef]) : [`NSObject] Objc.nativeNSObject)
   method commandDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "commandDescription:")[]) : [`NSScriptCommandDescription] Objc.nativeNSObject)
   method setDirectParameter (directParameter : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDirectParameter:")[make_pointer_from_object directParameter]) : unit)
   method directParameter =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "directParameter:")[]) : [`NSObject] Objc.nativeNSObject)
   method setReceiversSpecifier (receiversRef : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setReceiversSpecifier:")[make_pointer_from_object receiversRef]) : unit)
   method receiversSpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "receiversSpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
   method evaluatedReceivers =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "evaluatedReceivers:")[]) : [`NSObject] Objc.nativeNSObject)
   method setArguments (args : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setArguments:")[make_pointer_from_object args]) : unit)
   method arguments =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "arguments:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method evaluatedArguments =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "evaluatedArguments:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method isWellFormed =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isWellFormed:")[]) : bool)
   method performDefaultImplementation =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "performDefaultImplementation:")[]) : [`NSObject] Objc.nativeNSObject)
   method executeCommand =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "executeCommand:")[]) : [`NSObject] Objc.nativeNSObject)
   method setScriptErrorNumber (errorNumber : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setScriptErrorNumber:")[make_int errorNumber]) : unit)
   method scriptErrorNumber =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "scriptErrorNumber:")[]) : int)
   method setScriptErrorString (errorString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setScriptErrorString:")[make_pointer_from_object errorString]) : unit)
   method scriptErrorString =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "scriptErrorString:")[]) : [`NSString] Objc.nativeNSObject)
   method appleEvent =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "appleEvent:")[]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
   method suspendExecution =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "suspendExecution:")[]) : unit)
   method resumeExecutionWithResult (result : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "resumeExecutionWithResult:")[make_pointer_from_object result]) : unit)
end
