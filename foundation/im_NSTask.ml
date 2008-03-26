(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTask *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method setLaunchPath (path : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLaunchPath:")
      [make_pointer_from_object path]) : unit)
  method setArguments (arguments : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setArguments:")
      [make_pointer_from_object arguments]) : unit)
  method setEnvironment (dict : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEnvironment:")
      [make_pointer_from_object dict]) : unit)
  method setCurrentDirectoryPath (path : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCurrentDirectoryPath:")
      [make_pointer_from_object path]) : unit)
  method setStandardInput (input : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setStandardInput:")
      [make_pointer_from_object input]) : unit)
  method setStandardOutput (output : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setStandardOutput:")
      [make_pointer_from_object output]) : unit)
  method setStandardError (error : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setStandardError:")
      [make_pointer_from_object error]) : unit)
  method launchPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "launchPath")[])
       : [`NSString] Objc.id))
  method arguments =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "arguments")[])
       : [`NSArray] Objc.id))
  method environment =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "environment")[])
       : [`NSDictionary] Objc.id))
  method currentDirectoryPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "currentDirectoryPath")[])
       : [`NSString] Objc.id))
  method standardInput =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "standardInput")[])
       : [`NSObject] Objc.id)
  method standardOutput =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "standardOutput")[])
       : [`NSObject] Objc.id)
  method standardError =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "standardError")[])
       : [`NSObject] Objc.id)
  method launch =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "launch")[])
       : unit)
  method interrupt =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "interrupt")[])
       : unit)
  method terminate =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "terminate")[])
       : unit)
  method suspend =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "suspend")[])
       : bool)
  method resume =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "resume")[])
       : bool)
  method processIdentifier =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "processIdentifier")[])
       : int)
  method isRunning =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isRunning")[])
       : bool)
  method terminationStatus =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "terminationStatus")[])
       : int)
end
