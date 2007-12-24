(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSPortNameServer"
let _ = init()
let make_NSObject_of_NSPortNameServer (o : [`NSPortNameServer] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSPortNameServer *)
let class_NSPortNameServer = object
   val repr = Classes.find "NSPortNameServer"
   method _new = (Objc.objcnew repr : [`NSPortNameServer] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPortNameServer] nativeNSObject)
   method systemDefaultPortNameServer =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "systemDefaultPortNameServer:")[]) : [`NSPortNameServer] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPortNameServer *)
class native_NSPortNameServer = fun (o : [`NSPortNameServer] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSPortNameServer o) as super
   (* skipping selector portForName *)
   method portForName  ?host:(host : [`NSString] Objc.t option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "portForName" make_pointer_from_object
       ++ Objc.opt_arg host "host" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSPort] Objc.nativeNSObject)
   method registerPort  ~name:(name : [`NSString] Objc.t ) (port : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg port "registerPort" make_pointer_from_object
       ++ Objc.arg name "name" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method removePortForName (name : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "removePortForName:")[make_pointer_from_object name]) : bool)
end
let make_NSPortNameServer_of_NSMachBootstrapServer (o : [`NSMachBootstrapServer] nativeNSObject) = (Obj.magic o : [`NSPortNameServer] nativeNSObject)
(* Class object for NSMachBootstrapServer *)
let class_NSMachBootstrapServer = object
   val repr = Classes.find "NSMachBootstrapServer"
   method _new = (Objc.objcnew repr : [`NSMachBootstrapServer] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMachBootstrapServer] nativeNSObject)
   method sharedInstance =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedInstance:")[]) : [`NSMachBootstrapServer] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSMachBootstrapServer *)
class native_NSMachBootstrapServer = fun (o : [`NSMachBootstrapServer] nativeNSObject) -> object (self)
   inherit native_NSPortNameServer (make_NSPortNameServer_of_NSMachBootstrapServer o) as super
   (* skipping selector portForName *)
   method portForName  ?host:(host : [`NSString] Objc.t option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "portForName" make_pointer_from_object
       ++ Objc.opt_arg host "host" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSPort] Objc.nativeNSObject)
   method registerPort  ~name:(name : [`NSString] Objc.t ) (port : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg port "registerPort" make_pointer_from_object
       ++ Objc.arg name "name" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
end
let make_NSPortNameServer_of_NSMessagePortNameServer (o : [`NSMessagePortNameServer] nativeNSObject) = (Obj.magic o : [`NSPortNameServer] nativeNSObject)
(* Class object for NSMessagePortNameServer *)
let class_NSMessagePortNameServer = object
   val repr = Classes.find "NSMessagePortNameServer"
   method _new = (Objc.objcnew repr : [`NSMessagePortNameServer] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMessagePortNameServer] nativeNSObject)
   method sharedInstance =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedInstance:")[]) : [`NSMessagePortNameServer] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSMessagePortNameServer *)
class native_NSMessagePortNameServer = fun (o : [`NSMessagePortNameServer] nativeNSObject) -> object (self)
   inherit native_NSPortNameServer (make_NSPortNameServer_of_NSMessagePortNameServer o) as super
   (* skipping selector portForName *)
   method portForName  ?host:(host : [`NSString] Objc.t option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "portForName" make_pointer_from_object
       ++ Objc.opt_arg host "host" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSPort] Objc.nativeNSObject)
end
let make_NSPortNameServer_of_NSSocketPortNameServer (o : [`NSSocketPortNameServer] nativeNSObject) = (Obj.magic o : [`NSPortNameServer] nativeNSObject)
(* Class object for NSSocketPortNameServer *)
let class_NSSocketPortNameServer = object
   val repr = Classes.find "NSSocketPortNameServer"
   method _new = (Objc.objcnew repr : [`NSSocketPortNameServer] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSocketPortNameServer] nativeNSObject)
   method sharedInstance =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedInstance:")[]) : [`NSSocketPortNameServer] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSSocketPortNameServer *)
class native_NSSocketPortNameServer = fun (o : [`NSSocketPortNameServer] nativeNSObject) -> object (self)
   inherit native_NSPortNameServer (make_NSPortNameServer_of_NSSocketPortNameServer o) as super
   (* skipping selector portForName *)
   (* skipping selector portForName:host *)
   (* skipping selector registerPort:name *)
   method removePortForName (name : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "removePortForName:")[make_pointer_from_object name]) : bool)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method portForName  ?host:(host : [`NSString] Objc.t option) ?nameServerPortNumber:(portNumber : int option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "portForName" make_pointer_from_object
       ++ Objc.opt_arg host "host" make_pointer_from_object
       ++ Objc.opt_arg portNumber "nameServerPortNumber" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSPort] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method registerPort  ~name:(name : [`NSString] Objc.t ) ?nameServerPortNumber:(portNumber : int option) (port : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg port "registerPort" make_pointer_from_object
       ++ Objc.arg name "name" make_pointer_from_object
       ++ Objc.opt_arg portNumber "nameServerPortNumber" make_int
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)

*)
   method setDefaultNameServerPortNumber (portNumber : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDefaultNameServerPortNumber:")[make_int portNumber]) : unit)
   method defaultNameServerPortNumber =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "defaultNameServerPortNumber:")[]) : int)
end
