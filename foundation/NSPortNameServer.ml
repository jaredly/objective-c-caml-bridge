open Objc
open NSObject


external init : unit -> unit = "caml_init_NSPortNameServer"
let _ = init()
(* Class object for NSMessagePortNameServer *)
let class_NSMessagePortNameServer = object
   val o = Classes.find "NSMessagePortNameServer"
   method _new = (Objc.objcnew o : [`NSMessagePortNameServer] nativeNSObject)
   method sharedInstance =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedInstance:")[]) : [`NSMessagePortNameServer] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSMessagePortNameServer *)
class native_NSMessagePortNameServer = fun (o : [`NSMessagePortNameServer] nativeNSObject) -> object (self)
   val o = o
   method o = o
   (* skipping selector portForName *)
   method portForName  ?host:(host : [`NSString] Objc.t option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "portForName" make_pointer_from_object
       ++ Objc.opt_arg host "host" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSPort] Objc.nativeNSObject)
end
(* Class object for NSPortNameServer *)
let class_NSPortNameServer = object
   val o = Classes.find "NSPortNameServer"
   method _new = (Objc.objcnew o : [`NSPortNameServer] nativeNSObject)
   method systemDefaultPortNameServer =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "systemDefaultPortNameServer:")[]) : [`NSPortNameServer] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPortNameServer *)
class native_NSPortNameServer = fun (o : [`NSPortNameServer] nativeNSObject) -> object (self)
   val o = o
   method o = o
   (* skipping selector portForName *)
   method portForName  ?host:(host : [`NSString] Objc.t option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "portForName" make_pointer_from_object
       ++ Objc.opt_arg host "host" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSPort] Objc.nativeNSObject)
   method registerPort  ~name:(name : [`NSString] Objc.t ) (port : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg port "registerPort" make_pointer_from_object
       ++ Objc.arg name "name" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method removePortForName (name : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "removePortForName:")[make_pointer_from_object name]) : bool)
end
(* Class object for NSMachBootstrapServer *)
let class_NSMachBootstrapServer = object
   val o = Classes.find "NSMachBootstrapServer"
   method _new = (Objc.objcnew o : [`NSMachBootstrapServer] nativeNSObject)
   method sharedInstance =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedInstance:")[]) : [`NSMachBootstrapServer] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSMachBootstrapServer *)
class native_NSMachBootstrapServer = fun (o : [`NSMachBootstrapServer] nativeNSObject) -> object (self)
   val o = o
   method o = o
   (* skipping selector portForName *)
   method portForName  ?host:(host : [`NSString] Objc.t option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "portForName" make_pointer_from_object
       ++ Objc.opt_arg host "host" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSPort] Objc.nativeNSObject)
   method registerPort  ~name:(name : [`NSString] Objc.t ) (port : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg port "registerPort" make_pointer_from_object
       ++ Objc.arg name "name" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
end
(* Class object for NSSocketPortNameServer *)
let class_NSSocketPortNameServer = object
   val o = Classes.find "NSSocketPortNameServer"
   method _new = (Objc.objcnew o : [`NSSocketPortNameServer] nativeNSObject)
   method sharedInstance =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedInstance:")[]) : [`NSSocketPortNameServer] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSSocketPortNameServer *)
class native_NSSocketPortNameServer = fun (o : [`NSSocketPortNameServer] nativeNSObject) -> object (self)
   val o = o
   method o = o
   (* skipping selector portForName *)
   (* skipping selector portForName:host *)
   (* skipping selector registerPort:name *)
   method removePortForName (name : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "removePortForName:")[make_pointer_from_object name]) : bool)
   method portForName  ?host:(host : [`NSString] Objc.t option) ?nameServerPortNumber:(portNumber : int option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "portForName" make_pointer_from_object
       ++ Objc.opt_arg host "host" make_pointer_from_object
       ++ Objc.opt_arg portNumber "nameServerPortNumber" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSPort] Objc.nativeNSObject)
   method registerPort  ~name:(name : [`NSString] Objc.t ) ?nameServerPortNumber:(portNumber : int option) (port : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg port "registerPort" make_pointer_from_object
       ++ Objc.arg name "name" make_pointer_from_object
       ++ Objc.opt_arg portNumber "nameServerPortNumber" make_int
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method setDefaultNameServerPortNumber (portNumber : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDefaultNameServerPortNumber:")[make_int portNumber]) : unit)
   method defaultNameServerPortNumber =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "defaultNameServerPortNumber:")[]) : int)
end
