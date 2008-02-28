(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSScriptCommand *)
class virtual methods = object (self)
  method virtual repr : [`NSScriptCommand] Objc.id
  method initWithCommandDescription (commandDef : [`NSScriptCommandDescription] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithCommandDescription:")
      [make_pointer_from_object commandDef]) : [`NSObject] Objc.id)
  method commandDescription =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "commandDescription")[])
       : [`NSScriptCommandDescription] Objc.id))
  method setDirectParameter (directParameter : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDirectParameter:")
      [make_pointer_from_object directParameter]) : unit)
  method directParameter =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "directParameter")[])
       : [`NSObject] Objc.id)
  method setReceiversSpecifier (receiversRef : [`NSScriptObjectSpecifier] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setReceiversSpecifier:")
      [make_pointer_from_object receiversRef]) : unit)
  method receiversSpecifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "receiversSpecifier")[])
       : [`NSScriptObjectSpecifier] Objc.id))
  method evaluatedReceivers =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "evaluatedReceivers")[])
       : [`NSObject] Objc.id)
  method setArguments (args : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setArguments:")
      [make_pointer_from_object args]) : unit)
  method arguments =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "arguments")[])
       : [`NSDictionary] Objc.id))
  method evaluatedArguments =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "evaluatedArguments")[])
       : [`NSDictionary] Objc.id))
  method isWellFormed =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isWellFormed")[])
       : bool)
  method performDefaultImplementation =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "performDefaultImplementation")[])
       : [`NSObject] Objc.id)
  method executeCommand =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "executeCommand")[])
       : [`NSObject] Objc.id)
  method setScriptErrorNumber (errorNumber : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setScriptErrorNumber:")
      [make_int errorNumber]) : unit)
  method scriptErrorNumber =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "scriptErrorNumber")[])
       : int)
  method setScriptErrorString (errorString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setScriptErrorString:")
      [make_pointer_from_object errorString]) : unit)
  method scriptErrorString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "scriptErrorString")[])
       : [`NSString] Objc.id))
  method appleEvent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "appleEvent")[])
       : [`NSAppleEventDescriptor] Objc.id))
  method suspendExecution =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "suspendExecution")[])
       : unit)
  method resumeExecutionWithResult (result : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resumeExecutionWithResult:")
      [make_pointer_from_object result]) : unit)
end
