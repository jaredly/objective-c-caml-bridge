open Objc
open NSObject


external init : unit -> unit = "caml_init_NSTask"
let _ = init()
(* Class object for NSTask *)
let class_NSTask = object
   val o = Classes.find "NSTask"
   method _new = (Objc.objcnew o : [`NSTask] nativeNSObject)
(* methods for category NSTaskConveniences *)
   method launchedTaskWithLaunchPath  ~arguments:(arguments : [`NSArray] Objc.t ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "launchedTaskWithLaunchPath" make_pointer_from_object
       ++ Objc.arg arguments "arguments" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSTask] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSTask *)
class native_NSTask = fun (o : [`NSTask] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSTaskConveniences *)
   method waitUntilExit =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "waitUntilExit:")[]) : unit)
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method setLaunchPath (path : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLaunchPath:")[make_pointer_from_object path]) : unit)
   method setArguments (arguments : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setArguments:")[make_pointer_from_object arguments]) : unit)
   method setEnvironment (dict : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setEnvironment:")[make_pointer_from_object dict]) : unit)
   method setCurrentDirectoryPath (path : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCurrentDirectoryPath:")[make_pointer_from_object path]) : unit)
   method setStandardInput (input : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setStandardInput:")[make_pointer_from_object input]) : unit)
   method setStandardOutput (output : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setStandardOutput:")[make_pointer_from_object output]) : unit)
   method setStandardError (error : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setStandardError:")[make_pointer_from_object error]) : unit)
   method launchPath =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "launchPath:")[]) : [`NSString] Objc.nativeNSObject)
   method arguments =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "arguments:")[]) : [`NSArray] Objc.nativeNSObject)
   method environment =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "environment:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method currentDirectoryPath =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentDirectoryPath:")[]) : [`NSString] Objc.nativeNSObject)
   method standardInput =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "standardInput:")[]) : [`NSObject] Objc.nativeNSObject)
   method standardOutput =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "standardOutput:")[]) : [`NSObject] Objc.nativeNSObject)
   method standardError =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "standardError:")[]) : [`NSObject] Objc.nativeNSObject)
   method launch =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "launch:")[]) : unit)
   method interrupt =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "interrupt:")[]) : unit)
   method terminate =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "terminate:")[]) : unit)
   method suspend =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "suspend:")[]) : bool)
   method resume =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "resume:")[]) : bool)
   method processIdentifier =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "processIdentifier:")[]) : int)
   method isRunning =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isRunning:")[]) : bool)
   method terminationStatus =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "terminationStatus:")[]) : int)
end
