(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSTask"
let _ = init()
let make_NSObject_of_NSTask (o : [`NSTask] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSTask *)
let class_NSTask = object
   val repr = Classes.find "NSTask"
   method _new = (Objc.objcnew repr : [`NSTask] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTask] nativeNSObject)
(* methods for category NSTaskConveniences *)
   method launchedTaskWithLaunchPath  ~arguments:(arguments : [`NSArray] Objc.t ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "launchedTaskWithLaunchPath" make_pointer_from_object
       ++ Objc.arg arguments "arguments" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSTask] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSTask *)
class native_NSTask = fun (o : [`NSTask] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSTask o) as super
(* methods for category NSTaskConveniences *)
   method waitUntilExit =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "waitUntilExit:")[]) : unit)
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method setLaunchPath (path : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLaunchPath:")[make_pointer_from_object path]) : unit)
   method setArguments (arguments : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setArguments:")[make_pointer_from_object arguments]) : unit)
   method setEnvironment (dict : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setEnvironment:")[make_pointer_from_object dict]) : unit)
   method setCurrentDirectoryPath (path : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCurrentDirectoryPath:")[make_pointer_from_object path]) : unit)
   method setStandardInput (input : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setStandardInput:")[make_pointer_from_object input]) : unit)
   method setStandardOutput (output : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setStandardOutput:")[make_pointer_from_object output]) : unit)
   method setStandardError (error : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setStandardError:")[make_pointer_from_object error]) : unit)
   method launchPath =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "launchPath:")[]) : [`NSString] Objc.nativeNSObject)
   method arguments =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "arguments:")[]) : [`NSArray] Objc.nativeNSObject)
   method environment =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "environment:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method currentDirectoryPath =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "currentDirectoryPath:")[]) : [`NSString] Objc.nativeNSObject)
   method standardInput =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "standardInput:")[]) : [`NSObject] Objc.nativeNSObject)
   method standardOutput =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "standardOutput:")[]) : [`NSObject] Objc.nativeNSObject)
   method standardError =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "standardError:")[]) : [`NSObject] Objc.nativeNSObject)
   method launch =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "launch:")[]) : unit)
   method interrupt =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "interrupt:")[]) : unit)
   method terminate =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "terminate:")[]) : unit)
   method suspend =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "suspend:")[]) : bool)
   method resume =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "resume:")[]) : bool)
   method processIdentifier =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "processIdentifier:")[]) : int)
   method isRunning =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isRunning:")[]) : bool)
   method terminationStatus =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "terminationStatus:")[]) : int)
end
