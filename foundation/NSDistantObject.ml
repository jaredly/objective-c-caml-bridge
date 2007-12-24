(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSProxy


external init : unit -> unit = "caml_init_NSDistantObject"
let _ = init()
let make_NSProxy_of_NSDistantObject (o : [`NSDistantObject] nativeNSObject) = (Obj.magic o : [`NSProxy] nativeNSObject)
(* Class object for NSDistantObject *)
let class_NSDistantObject = object
   val repr = Classes.find "NSDistantObject"
   method _new = (Objc.objcnew repr : [`NSDistantObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSDistantObject] nativeNSObject)
   method proxyWithTarget  ~connection:(connection : [`NSConnection] Objc.t ) (target : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg target "proxyWithTarget" make_pointer_from_object
       ++ Objc.arg connection "connection" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSDistantObject] Objc.nativeNSObject)
   method proxyWithLocal  ~connection:(connection : [`NSConnection] Objc.t ) (target : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg target "proxyWithLocal" make_pointer_from_object
       ++ Objc.arg connection "connection" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSDistantObject] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSDistantObject *)
class native_NSDistantObject = fun (o : [`NSDistantObject] nativeNSObject) -> object (self)
   inherit native_NSProxy (make_NSProxy_of_NSDistantObject o) as super
   method initWithTarget  ~connection:(connection : [`NSConnection] Objc.t ) (target : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg target "initWithTarget" make_pointer_from_object
       ++ Objc.arg connection "connection" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithLocal  ~connection:(connection : [`NSConnection] Objc.t ) (target : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg target "initWithLocal" make_pointer_from_object
       ++ Objc.arg connection "connection" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method setProtocolForProxy (proto : [`Protocol] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setProtocolForProxy:")[make_pointer_from_object proto]) : unit)
   method connectionForProxy =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "connectionForProxy:")[]) : [`NSConnection] Objc.nativeNSObject)
end
